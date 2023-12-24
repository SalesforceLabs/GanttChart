global class RequiredFeatureMissingException extends Exception {
	global RequiredFeatureMissingException(String param0, Exception param1) { }
	global RequiredFeatureMissingException(Exception param0) { }
	global RequiredFeatureMissingException(String param0) { }
	global RequiredFeatureMissingException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}