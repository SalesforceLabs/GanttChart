global class C2CToken {
	global C2CToken() { }
	global Object clone() { }
	global static String mintJwt(String audienceId, String integrationName) { }
	global static String mintJwt(String audienceId) { }
	global static String mintJwtForService(String audienceId, String integrationName) { }

}