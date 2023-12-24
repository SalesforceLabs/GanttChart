global class QueryNode {
	global String build(String streamName) { }
	global wave.QueryNode cap(Integer cap) { }
	global Object clone() { }
	global ConnectApi.LiteralJson execute(String streamName) { }
	global wave.QueryNode filter(List<String> filterConditions) { }
	global wave.QueryNode filter(String filterCondition) { }
	global wave.QueryNode foreach(List<wave.ProjectionNode> projections) { }
	global wave.QueryNode group(List<String> groups) { }
	global wave.QueryNode group() { }
	global wave.QueryNode order(List<List<String>> orders) { }

}