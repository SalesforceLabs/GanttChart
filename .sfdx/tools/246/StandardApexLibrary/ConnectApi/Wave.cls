global class Wave {
	global Object clone() { }
	global static ConnectApi.LiteralJson executeQuery(String queryString, String timezone) { }
	global static ConnectApi.LiteralJson executeQuery(String queryString) { }
	global static ConnectApi.LiteralJson executeQueryByInputRep(ConnectApi.SaqlQueryInput query) { }
	global static ConnectApi.LiteralJson executeQueryByName(String name, String timezone) { }
	global static ConnectApi.LiteralJson executeQueryByName(String name) { }

}