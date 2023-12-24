global class XmlException extends Exception {
	global XmlException(String param0, Exception param1) { }
	global XmlException(Exception param0) { }
	global XmlException(String param0) { }
	global XmlException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}