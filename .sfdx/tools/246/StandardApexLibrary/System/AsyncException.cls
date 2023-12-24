global class AsyncException extends Exception {
	global AsyncException(String param0, Exception param1) { }
	global AsyncException(Exception param0) { }
	global AsyncException(String param0) { }
	global AsyncException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}