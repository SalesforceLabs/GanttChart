global class CanvasException extends Exception {
	global CanvasException(String param0, Exception param1) { }
	global CanvasException(Exception param0) { }
	global CanvasException(String param0) { }
	global CanvasException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}