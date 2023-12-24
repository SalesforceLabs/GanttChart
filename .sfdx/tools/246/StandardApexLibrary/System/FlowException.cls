global class FlowException extends Exception {
	global FlowException(String param0, Exception param1) { }
	global FlowException(Exception param0) { }
	global FlowException(String param0) { }
	global FlowException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}