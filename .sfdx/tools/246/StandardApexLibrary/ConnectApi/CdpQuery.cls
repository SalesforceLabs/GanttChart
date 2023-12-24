global class CdpQuery {
	global Object clone() { }
	global static ConnectApi.CdpQueryMetadataOutput getAllMetadata(String entityType, String entityCategory, String entityName, String dataspace) { }
	global static ConnectApi.CdpQueryMetadataOutput getAllMetadata(String entityType, String entityCategory, String entityName) { }
	global static ConnectApi.CdpQueryMetadataOutput getAllMetadata() { }
	global static ConnectApi.CdpQueryMetadataOutput getInsightsMetadata(String ciName, String dataspace) { }
	global static ConnectApi.CdpQueryMetadataOutput getInsightsMetadata(String ciName) { }
	global static ConnectApi.CdpQueryMetadataOutput getInsightsMetadata() { }
	global static ConnectApi.CdpQueryMetadataOutput getProfileMetadata(String dataModelName, String dataspace) { }
	global static ConnectApi.CdpQueryMetadataOutput getProfileMetadata(String dataModelName) { }
	global static ConnectApi.CdpQueryMetadataOutput getProfileMetadata() { }
	global static ConnectApi.CdpQueryOutputV2 nextBatchAnsiSqlV2(String nextBatchId, String dataspace) { }
	global static ConnectApi.CdpQueryOutputV2 nextBatchAnsiSqlV2(String nextBatchId) { }
	global static ConnectApi.CdpQueryOutput queryANSISql(ConnectApi.CdpQueryInput input, Integer batchSize, Integer offset, String orderby, String dataspace) { }
	global static ConnectApi.CdpQueryOutput queryANSISql(ConnectApi.CdpQueryInput input, Integer batchSize, Integer offset, String orderby) { }
	global static ConnectApi.CdpQueryOutput queryANSISql(ConnectApi.CdpQueryInput input) { }
	global static ConnectApi.CdpQueryOutputV2 queryAnsiSqlV2(ConnectApi.CdpQueryInput input, String dataspace) { }
	global static ConnectApi.CdpQueryOutputV2 queryAnsiSqlV2(ConnectApi.CdpQueryInput input) { }
	global static ConnectApi.CdpQueryOutput queryCalculatedInsights(String ciName, String dimensions, String measures, String orderby, String filters, Integer batchSize, Integer offset, String timeGranularity, String dataspace) { }
	global static ConnectApi.CdpQueryOutput queryCalculatedInsights(String ciName, String dimensions, String measures, String orderby, String filters, Integer batchSize, Integer offset, String timeGranularity) { }
	global static ConnectApi.CdpQueryOutput queryCalculatedInsights(String ciName, String dimensions, String measures, String orderby, String filters, Integer batchSize, Integer offset) { }
	global static ConnectApi.CdpQueryOutput queryProfileApi(String dataModelName, String id, String ciName, String searchKey, String dimensions, String measures, String filters, String fields, Integer batchSize, Integer offset, String orderby, String timeGranularity, String dataspace) { }
	global static ConnectApi.CdpQueryOutput queryProfileApi(String dataModelName, String id, String ciName, String searchKey, String dimensions, String measures, String filters, String fields, Integer batchSize, Integer offset, String orderby, String timeGranularity) { }
	global static ConnectApi.CdpQueryOutput queryProfileApi(String dataModelName, String id, String ciName, String searchKey, String dimensions, String measures, String filters, String fields, Integer batchSize, Integer offset, String orderby) { }
	global static ConnectApi.CdpQueryOutput queryProfileApi(String dataModelName, String id, String childDataModelName, String searchKey, String filters, String fields, Integer batchSize, Integer offset, String orderby) { }
	global static ConnectApi.CdpQueryOutput queryProfileApi(String dataModelName, String id, String searchKey, String filters, String fields, Integer batchSize, Integer offset, String orderby) { }
	global static ConnectApi.CdpQueryOutput queryProfileApi(String dataModelName, String filters, String fields, Integer batchSize, Integer offset, String orderby) { }
	global static ConnectApi.CdpQueryDataOutput universalIdLookupBySourceId(String entityName, String dataSourceId, String dataSourceObjectId, String sourceRecordId, String dataspace) { }
	global static ConnectApi.CdpQueryDataOutput universalIdLookupBySourceId(String entityName, String dataSourceId, String dataSourceObjectId, String sourceRecordId) { }

}