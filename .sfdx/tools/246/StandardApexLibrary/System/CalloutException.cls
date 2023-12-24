global class CalloutException extends Exception {
	global CalloutException(String param0, Exception param1) { }
	global CalloutException(Exception param0) { }
	global CalloutException(String param0) { }
	global CalloutException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}