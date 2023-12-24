global class DuplicateMessageException extends Exception {
	global DuplicateMessageException(String param0, Exception param1) { }
	global DuplicateMessageException(Exception param0) { }
	global DuplicateMessageException(String param0) { }
	global DuplicateMessageException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}