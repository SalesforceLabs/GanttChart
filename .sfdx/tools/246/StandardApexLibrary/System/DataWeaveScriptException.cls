global class DataWeaveScriptException extends Exception {
	global DataWeaveScriptException(String param0, Exception param1) { }
	global DataWeaveScriptException(Exception param0) { }
	global DataWeaveScriptException(String param0) { }
	global DataWeaveScriptException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}