global class LicenseException extends Exception {
	global LicenseException(String param0, Exception param1) { }
	global LicenseException(Exception param0) { }
	global LicenseException(String param0) { }
	global LicenseException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}