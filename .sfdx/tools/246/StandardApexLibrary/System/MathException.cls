global class MathException extends Exception {
	global MathException(String param0, Exception param1) { }
	global MathException(Exception param0) { }
	global MathException(String param0) { }
	global MathException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}