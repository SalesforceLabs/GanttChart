global class SearchException extends Exception {
	global SearchException(String param0, Exception param1) { }
	global SearchException(Exception param0) { }
	global SearchException(String param0) { }
	global SearchException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}