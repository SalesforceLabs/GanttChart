global class FinalException extends Exception {
	global FinalException(String param0, Exception param1) { }
	global FinalException(Exception param0) { }
	global FinalException(String param0) { }
	global FinalException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}