public with sharing class ganttChart {
    @AuraEnabled
    public static Map<String, Object> getChartData(String recordId, String startTime, String endTime, Integer slotSize, List<String> filterProjects, List<String> filterRoles, String filterStatus) {
        Map<String, Object> data = new Map<String, Object>();
        String query = 'SELECT Resource__c, Resource__r.Name, Resource__r.Active__c, Resource__r.Default_Role__c, Project__c, Project__r.Name, Project__r.Active__c, Project__r.Color__c, Start_Date__c, End_Date__c, Status__c, Effort__c FROM Allocation__c WHERE Start_Date__c <= :endDate AND End_Date__c >= :startDate AND (Project__c = NULL OR Project__r.Active__c = TRUE) AND Resource__r.Active__c = TRUE';
        
        List<Allocation__c> allocations = new List<Allocation__c>();
        Map<String, Object> projectById = new Map<String, Object>();
        Map<String, Object> resourceById = new Map<String, Object>();
        Set<String> roles = new Set<String>();

        if (!filterProjects.isEmpty()) {
            query += ' AND Project__c IN :filterProjects';
        }
        /*
        if (!filterProjectRecords.isEmpty()) {
            query += ' AND Project__c IN :filterProjectRecords';
        }
        */
        if (!filterRoles.isEmpty()) {
            query += ' AND Resource__r.Default_Role__c IN :filterRoles';
        }
        if (String.isNotEmpty(filterStatus)) {
            query += ' AND Status__c = :filterStatus';
        }

        if (String.isNotEmpty(startTime) &&  String.isNotEmpty(endTime)) {
            Date startDate = DateTime.newInstance(Long.valueOf(startTime)).date();
            
            Date endDate = DateTime.newInstance(Long.valueOf(endTime)).date();
            Integer days = startDate.daysBetween(endDate) + 1;
            slotSize = Integer.valueOf(slotSize);
            Decimal slots = days / slotSize;
            
            // Overview View
            if (String.isEmpty(recordId)) {
                query += ' ORDER BY Resource__r.Name, Project__r.Name NULLS FIRST, Start_Date__c';
                System.debug(query);
                System.debug(startTime);
                System.debug(endTime);
                System.debug(slotSize);
                allocations = Database.query(query);

                // display all active resources
                for (Object r : ganttChart.getResources()) {
                    Map<String, Object> resource = (Map<String, Object>)r;
                    resourceById.put((String)resource.get('Id'), new Map<String, Object> {
                        'Id' => resource.get('Id'),
                        'Name' => resource.get('Name'),
                        'Default_Role__c' => resource.get('Default_Role__c'),
                        'allocationsByProject' => new Map<String, Object>()
                    });
                }
            } else {
                if (Id.valueOf(recordId).getSobjectType().getDescribe().getName().endsWith('Project__c')) {
                    data.put('projectId', recordId);
                }

                query += ' AND (Project__c = :recordId OR Resource__c = :recordId)';
                query += ' ORDER BY Resource__r.Name, Project__r.Name NULLS FIRST, Start_Date__c';

                allocations = Database.query(query);

                // empty state on resource page
                if (allocations.isEmpty() && Id.valueOf(recordId).getSobjectType().getDescribe().getName().endsWith('Resource__c')) {
                    Resource__c resource = [SELECT Id, Name, Active__c, Default_Role__c
                                            FROM Resource__c
                                            WHERE Id = :recordId];

                    resourceById.put(resource.Id, new Map<String, Object> {
                        'Id' => resource.Id,
                        'Name' => resource.Name,
                        'Default_Role__c' => resource.Default_Role__c,
                        'allocationsByProject' => new Map<String, Object>()
                    });
                }
            }

            // organize allocations by resource and project
            for (Allocation__c allocation : allocations) {
                if (!resourceById.containsKey(allocation.Resource__c)) {
                    resourceById.put(allocation.Resource__c, new Map<String, Object> {
                        'Id' => allocation.Resource__c,
                        'Name' => allocation.Resource__r.Name,
                        'Default_Role__c' => allocation.Resource__r.Default_Role__c,
                        'allocationsByProject' => new Map<String, Object>()
                    });
                }

                Map<String, Object> resource = (Map<String, Object>)resourceById.get(allocation.Resource__c);
                Map<String, Object> allocationsByProject = (Map<String, Object>)resource.get('allocationsByProject');
                
                if (!allocationsByProject.containsKey(allocation.Project__c)) {
                    allocationsByProject.put(allocation.Project__c, new List<Object>());
                }

                projectById.put(allocation.Project__c, new Map<String, Object> {
                    'Id' => allocation.Project__c,
                    'Name' => allocation.Project__r.Name
                });

                List<Object> projectAllocation = (List<Object>)allocationsByProject.get(allocation.Project__c);

                Decimal left = Decimal.valueOf(startDate.daysBetween(allocation.Start_Date__c)) / slotSize;
                left = left.round(System.RoundingMode.FLOOR);
                
                Decimal right = Decimal.valueOf(startDate.daysBetween(allocation.End_Date__c)) / slotSize;
                right = right.round(System.RoundingMode.FLOOR);

                projectAllocation.add(new Map<String, Object> {
                    'Id' => allocation.Id,
                    'Start_Date__c' => allocation.Start_Date__c,
                    'End_Date__c' => allocation.End_Date__c,
                    'Status__c' => allocation.Status__c,
                    'Effort__c' => allocation.Effort__c,
                    'projectName' => allocation.Project__r.Name,
                    'color' => allocation.Project__r.Color__c,
                    'left' => left,
                    'right' => right
                });

                roles.add(allocation.Resource__r.Default_Role__c);
            }
        }

        data.put('projects', projectById.values());
        data.put('resources', resourceById.values());
        data.put('roles', roles);
        
        return data;
    }

    @AuraEnabled
    public static List<Object> getResources() {
        List<Object> resources = new List<Object>();

        for (Resource__c r : [SELECT Id, Name, Default_Role__c
                              FROM Resource__c
                              WHERE Active__c = true
                              ORDER BY Name]) {
            resources.add(new Map<String, Object> {
                'Id' => r.Id,
                'Name' => r.Name,
                'Default_Role__c' => r.Default_Role__c
            });
        }

        return resources;
    }

    @AuraEnabled
    public static List<Project__c> getProjects() {
        return [SELECT Id, Name
                FROM Project__c
                WHERE Active__c = true
                ORDER BY Name];
    }

    @AuraEnabled
    public static void saveAllocation(Id allocationId, Id projectId, Id resourceId, String effort, String status, String startDate, String endDate) {
        Allocation__c allocation = new Allocation__c(
            Start_Date__c = DateTime.newInstance(Long.valueOf(startDate)).date(),
            End_Date__c = DateTime.newInstance(Long.valueOf(endDate)).date()
        );

        // update allocation
        if (null != allocationId) {
            allocation.Id = allocationId;
        } else {
            if (null != projectId) {
                allocation.Project__c = projectId;
            }

            allocation.Resource__c = resourceId;
        }

        if (String.isNotEmpty(effort)) {
            allocation.Effort__c = effort;
        }
        if (String.isNotEmpty(status)) {
            allocation.Status__c = status;

            // remove project
            if ('Unavailable' == status) {
                allocation.Project__c = null;
            }
        }
        
        upsert allocation;
    }

    @AuraEnabled
    public static void deleteAllocation(Id allocationId) {
        delete new Allocation__c(Id = allocationId);
    }
}
