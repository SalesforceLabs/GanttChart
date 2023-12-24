global class Test {
	global Test() { }
	global static void calculatePermissionSetGroup(List<String> psgIds) { }
	global static void calculatePermissionSetGroup(String psgId) { }
	global static void clearApexPageMessages() { }
	global Object clone() { }
	global static Object createStub(System.Type parentType, System.StubProvider stubProvider) { }
	global static void enableChangeDataCapture() { }
	global static List<Id> enqueueBatchJobs(Integer n) { }
	global static eventbus.TestBroker getEventBus() { }
	global static List<Id> getFlexQueueOrder() { }
	global static Id getStandardPricebookId() { }
	global static Object invokeContinuationMethod(Object controller, System.Continuation continuation) { }
	global static Component.apex.page invokePage(System.PageReference p) { }
	global static Boolean isRunningTest() { }
	global static List<SObject> loadData(Schema.SObjectType sobjectType, String staticResourceName) { }
	global static QuickAction.SendEmailQuickActionDefaults newSendEmailQuickActionDefaults(Id contextId, Id replyToId) { }
	global static void setContinuationResponse(String label, System.HttpResponse response) { }
	global static void setCreatedDate(Id id, Datetime dt) { }
	global static void setCurrentPage(Object pageReference) { }
	global static void setCurrentPageReference(Object pageReference) { }
	global static void setFixedSearchResults(List<String> searchResultsIds) { }
	global static void setMock(System.Type interfaceType, Object mock) { }
	global static void setReadOnlyApplicationMode(Boolean readOnlyApplicationMode) { }
	global static void startTest() { }
	global static void stopTest() { }
	global static void testInstall(System.InstallHandler script, System.Version version, Boolean isPush, Boolean isRunAsInstallUser) { }
	global static void testInstall(System.InstallHandler script, System.Version version, Boolean isPush) { }
	global static void testInstall(System.InstallHandler script, System.Version version) { }
	global static void testSandboxPostCopyScript(System.SandboxPostCopy script, Id organizationId, Id sandboxId, String sandboxName, Boolean isRunAsAutoProcUser) { }
	global static void testSandboxPostCopyScript(System.SandboxPostCopy script, Id organizationId, Id sandboxId, String sandboxName) { }
	global static void testUninstall(System.UninstallHandler script, Boolean isRunAsInstallUser) { }
	global static void testUninstall(System.UninstallHandler script) { }

}