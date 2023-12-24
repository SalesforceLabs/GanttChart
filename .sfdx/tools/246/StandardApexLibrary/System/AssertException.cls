global class AssertException extends Exception {
	global AssertException(String param0, Exception param1) { }
	global AssertException(Exception param0) { }
	global AssertException(String param0) { }
	global AssertException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}