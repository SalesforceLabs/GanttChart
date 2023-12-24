global class JSONException extends Exception {
	global JSONException(String param0, Exception param1) { }
	global JSONException(Exception param0) { }
	global JSONException(String param0) { }
	global JSONException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}