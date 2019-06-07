@isTest
public with sharing class tst_ganttChart {
    @isTest
    static void ganttChart_getChartData() {
        Date d = Date.today();
        DateTime dt = DateTime.now();

        Project__c p = new Project__c(
            Name='Test Project',
            Color__c='Orange');
        insert p;

        Resource__c r = new Resource__c(
            Name='Test Resource',
            Default_Role__c='Test Role');
        insert r;

        Allocation__c a = new Allocation__c(
            Project__c = p.Id,
            Resource__c = r.Id,
            Start_Date__c = d,
            End_Date__c = d);
        insert a;

        Test.startTest();
        Map<String, Object> chartData = ganttChart.getChartData(
            null,
            String.valueOf(dt.getTime()),
            String.valueOf(dt.getTime()),
            1,
            new List<String>(),
            new List<String>(),
            '');
        Test.stopTest();

        System.assert(chartData.containsKey('projects'));
        List<Object> projects = (List<Object>)chartData.get('projects');
        System.assertEquals(1, projects.size());
        Map<String, Object> projectMap = (Map<String, Object>)projects.get(0);
        System.assertEquals(p.Id, (String)projectMap.get('Id'));

        System.assert(chartData.containsKey('resources'));
        List<Object> resources = (List<Object>)chartData.get('resources');
        System.assertEquals(1, resources.size());
        Map<String, Object> resourceMap = (Map<String, Object>)resources.get(0);
        System.assertEquals(r.Id, (String)resourceMap.get('Id'));

        System.assert(chartData.containsKey('roles'));
        Set<String> roles = (Set<String>)chartData.get('roles');
        System.assertEquals(1, roles.size());
        System.assert(roles.contains(r.Default_Role__c));
    }

    @isTest
    static void ganttChart_getChartData_withFilters() {
        Date d = Date.today();
        DateTime dt = DateTime.now();

        Project__c p = new Project__c(
            Name='Test Project',
            Color__c='Orange');
        insert p;

        Resource__c r = new Resource__c(
            Name='Test Resource',
            Default_Role__c='Test Role');
        insert r;

        Allocation__c a = new Allocation__c(
            Project__c = p.Id,
            Resource__c = r.Id,
            Effort__c = 'High',
            Status__c = 'Active',
            Start_Date__c = d,
            End_Date__c = d);
        insert a;

        Test.startTest();
        Map<String, Object> chartData = ganttChart.getChartData(
            r.Id,
            String.valueOf(dt.getTime()),
            String.valueOf(dt.getTime()),
            1,
            new List<String> { p.Id },
            new List<String> { r.Default_Role__c },
            a.Status__c);
        Test.stopTest();

        System.assert(chartData.containsKey('projects'));
        List<Object> projects = (List<Object>)chartData.get('projects');
        System.assertEquals(1, projects.size());
        Map<String, Object> projectMap = (Map<String, Object>)projects.get(0);
        System.assertEquals(p.Id, (String)projectMap.get('Id'));

        System.assert(chartData.containsKey('resources'));
        List<Object> resources = (List<Object>)chartData.get('resources');
        System.assertEquals(1, resources.size());
        Map<String, Object> resourceMap = (Map<String, Object>)resources.get(0);
        System.assertEquals(r.Id, (String)resourceMap.get('Id'));

        System.assert(chartData.containsKey('roles'));
        Set<String> roles = (Set<String>)chartData.get('roles');
        System.assertEquals(1, roles.size());
        System.assert(roles.contains(r.Default_Role__c));
    }

    @isTest
    static void ganttChart_getResources() {
        Resource__c r = new Resource__c(
            Name='Test Resource',
            Default_Role__c='Test Role');
        insert r;

        Test.startTest();
        List<Object> resources = ganttChart.getResources();
        Test.stopTest();

        System.assertEquals(1, resources.size());
        System.assertEquals(r.Id, ((Map<String, Object>)resources.get(0)).get('Id'));
        System.assertEquals(r.Default_Role__c, ((Map<String, Object>)resources.get(0)).get('Default_Role__c'));
    }
    
    @isTest
    static void ganttChart_getProjects() {
        Project__c p = new Project__c(
            Name='Test Project',
            Color__c='Orange');
        insert p;

        Test.startTest();
        List<Project__c> projects = ganttChart.getProjects();
        Test.stopTest();

        System.assertEquals(1, projects.size());
        System.assertEquals(p.Id, projects.get(0).Id);
    }
    
    @isTest
    static void ganttChart_saveAllocation() {
        Date d = Date.today();
        DateTime dt = DateTime.now();

        Project__c p = new Project__c(
            Name='Test Project',
            Color__c='Orange');
        insert p;

        Resource__c r = new Resource__c(
            Name='Test Resource',
            Default_Role__c='Test Role');
        insert r;

        String effort = 'High';
        String status = 'Active';

        Test.startTest();
        ganttChart.saveAllocation(null, p.Id, r.Id, effort, status, String.valueOf(dt.getTime()), String.valueOf(dt.getTime()));
        Test.stopTest();

        List<Allocation__c> allocations = [SELECT Id, Project__c, Resource__c, Effort__c, Status__c, Start_Date__c, End_Date__c
                                           FROM Allocation__c];
        System.assertEquals(1, allocations.size());
        System.assertEquals(p.Id, allocations.get(0).Project__c);
        System.assertEquals(r.Id, allocations.get(0).Resource__c);
        System.assertEquals(effort, allocations.get(0).Effort__c);
        System.assertEquals(status, allocations.get(0).Status__c);
    }

    @isTest
    static void ganttChart_saveAllocation_update() {
        Date d = Date.today();
        DateTime dt = DateTime.now();

        Project__c p = new Project__c(
            Name='Test Project',
            Color__c='Orange');
        insert p;

        Resource__c r = new Resource__c(
            Name='Test Resource',
            Default_Role__c='Test Role');
        insert r;

        String effort = 'High';
        String status = 'Unavailable';

        Allocation__c a = new Allocation__c(
            Project__c = p.Id,
            Resource__c = r.Id,
            Effort__c = effort,
            Status__c = 'Active',
            Start_Date__c = d,
            End_Date__c = d);
        insert a;

        Test.startTest();
        ganttChart.saveAllocation(a.Id, null, r.Id, effort, status, String.valueOf(dt.getTime()), String.valueOf(dt.getTime()));
        Test.stopTest();

        List<Allocation__c> allocations = [SELECT Id, Project__c, Resource__c, Effort__c, Status__c, Start_Date__c, End_Date__c
                                           FROM Allocation__c];
        System.assertEquals(1, allocations.size());
        System.assertEquals(a.Id, allocations.get(0).Id);
        System.assertEquals(null, allocations.get(0).Project__c);
        System.assertEquals(r.Id, allocations.get(0).Resource__c);
        System.assertEquals(effort, allocations.get(0).Effort__c);
        System.assertEquals(status, allocations.get(0).Status__c);
    }

    @isTest
    static void ganttChart_deleteAllocation() {
        Date d = Date.today();
        
        Project__c p = new Project__c(
            Name='Test Project',
            Color__c='Orange');
        insert p;

        Resource__c r = new Resource__c(
            Name='Test Resource',
            Default_Role__c='Test Role');
        insert r;

        Allocation__c a = new Allocation__c(
            Project__c = p.Id,
            Resource__c = r.Id,
            Start_Date__c = d,
            End_Date__c = d);
        insert a;

        Test.startTest();
        ganttChart.deleteAllocation(a.Id);
        Test.stopTest();

        List<Allocation__c> allocations = [SELECT Id FROM Allocation__c];

        System.assertEquals(0, allocations.size());
    }
}