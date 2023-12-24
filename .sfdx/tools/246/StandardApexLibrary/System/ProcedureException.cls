global class ProcedureException extends Exception {
	global ProcedureException(String param0, Exception param1) { }
	global ProcedureException(Exception param0) { }
	global ProcedureException(String param0) { }
	global ProcedureException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}