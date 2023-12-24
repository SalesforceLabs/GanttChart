global class LimitException extends Exception {
	global LimitException(String param0, Exception param1) { }
	global LimitException(Exception param0) { }
	global LimitException(String param0) { }
	global LimitException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}