global class StringException extends Exception {
	global StringException(String param0, Exception param1) { }
	global StringException(Exception param0) { }
	global StringException(String param0) { }
	global StringException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}