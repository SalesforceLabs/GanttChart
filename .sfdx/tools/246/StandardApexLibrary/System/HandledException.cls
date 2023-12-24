global class HandledException extends Exception {
	global HandledException(String param0, Exception param1) { }
	global HandledException(Exception param0) { }
	global HandledException(String param0) { }
	global HandledException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}