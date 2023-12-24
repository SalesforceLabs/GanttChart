global class QueryBuilder {
	global QueryBuilder() { }
	global Object clone() { }
	global static wave.QueryNode cogroup(List<wave.QueryNode> cogroupNodes, List<List<String>> groups) { }
	global static wave.ProjectionNode count() { }
	global static wave.ProjectionNode get(String projection) { }
	global static wave.QueryNode load(String datasetId, String datasetVersionId) { }
	global static wave.QueryNode loadByDeveloperName(String fullyQualifiedName) { }
	global static wave.QueryNode union(List<wave.QueryNode> unionNodes) { }

}