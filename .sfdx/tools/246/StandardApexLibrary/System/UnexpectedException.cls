global class UnexpectedException extends Exception {
	global UnexpectedException(String param0, Exception param1) { }
	global UnexpectedException(Exception param0) { }
	global UnexpectedException(String param0) { }
	global UnexpectedException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}