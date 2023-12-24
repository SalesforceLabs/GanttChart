global class BigObjectException extends Exception {
	global BigObjectException(String param0, Exception param1) { }
	global BigObjectException(Exception param0) { }
	global BigObjectException(String param0) { }
	global BigObjectException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}