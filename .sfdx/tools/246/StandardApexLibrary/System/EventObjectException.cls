global class EventObjectException extends Exception {
	global EventObjectException(String param0, Exception param1) { }
	global EventObjectException(Exception param0) { }
	global EventObjectException(String param0) { }
	global EventObjectException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}