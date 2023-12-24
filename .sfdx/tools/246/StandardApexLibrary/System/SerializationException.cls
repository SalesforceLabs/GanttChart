global class SerializationException extends Exception {
	global SerializationException(String param0, Exception param1) { }
	global SerializationException(Exception param0) { }
	global SerializationException(String param0) { }
	global SerializationException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}