declare module "@salesforce/apex/ganttChart.getChartData" {
  export default function getChartData(param: {recordId: any, startTime: any, endTime: any, slotSize: any, filterProjects: any, filterRoles: any, filterStatus: any}): Promise<any>;
}
declare module "@salesforce/apex/ganttChart.getResources" {
  export default function getResources(): Promise<any>;
}
declare module "@salesforce/apex/ganttChart.getProjects" {
  export default function getProjects(): Promise<any>;
}
declare module "@salesforce/apex/ganttChart.saveAllocation" {
  export default function saveAllocation(param: {allocationId: any, projectId: any, resourceId: any, effort: any, status: any, startDate: any, endDate: any}): Promise<any>;
}
declare module "@salesforce/apex/ganttChart.deleteAllocation" {
  export default function deleteAllocation(param: {allocationId: any}): Promise<any>;
}
