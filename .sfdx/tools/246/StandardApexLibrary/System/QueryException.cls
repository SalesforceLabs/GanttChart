global class QueryException extends Exception {
	global QueryException(String param0, Exception param1) { }
	global QueryException(Exception param0) { }
	global QueryException(String param0) { }
	global QueryException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}