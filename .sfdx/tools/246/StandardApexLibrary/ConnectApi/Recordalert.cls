global class RecordAlert {
	global Object clone() { }
	global static ConnectApi.RecordAlertCollectionRepresentation getRecordAlerts(String parentId, String whatId) { }
	global static ConnectApi.RecordAlertCollectionMapRepresentation getRecordAlertsFinancialAccountIdsBatch(List<String> financialAccountIds) { }
	global static ConnectApi.RecordAlertCollectionRepresentation getRecordAlertsForFinancialAccount(String financialAccountId) { }
	global static ConnectApi.RecordAlertCollectionRepresentation getRecordAlertsForPersonAccount(String personId) { }
	global static ConnectApi.RecordAlertCollectionMapRepresentation getRecordAlertsParentIdsBatch(List<String> parentIds) { }
	global static ConnectApi.RecordAlertCollectionMapRepresentation getRecordAlertsPersonIdsBatch(List<String> personIds) { }
	global static ConnectApi.RecordAlertCollectionMapRepresentation getRecordAlertsWhatIdsBatch(List<String> whatIds) { }
	global static ConnectApi.RecordAlertActionOutputRepresentation performActionOnExternalAlerts(String sourceSystemId, ConnectApi.RecordAlertActionInputRepresentation actionParameters) { }
	global static ConnectApi.RecordAlertActionCollectionMapRepresentation performBulkActionOnExternalAlerts(ConnectApi.RecordAlertBulkActionInputRepresentation actions) { }
	global static ConnectApi.RecordAlertActionOutputRepresentation performRecordAlertAction(String alertId, ConnectApi.RecordAlertActionInputRepresentation actionParameters) { }
	global static ConnectApi.RecordAlertActionCollectionMapRepresentation performRecordAlertBulkAction(ConnectApi.RecordAlertBulkActionInputRepresentation actions) { }

}