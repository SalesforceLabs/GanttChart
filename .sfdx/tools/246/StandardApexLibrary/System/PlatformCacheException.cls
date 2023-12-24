global class PlatformCacheException extends Exception {
	global PlatformCacheException(String param0, Exception param1) { }
	global PlatformCacheException(Exception param0) { }
	global PlatformCacheException(String param0) { }
	global PlatformCacheException() { }
	global Exception getCause() { }
	global Map<String,Set<String>> getInaccessibleFields() { }
	global Integer getLineNumber() { }
	global String getMessage() { }
	global String getStackTraceString() { }
	global String getTypeName() { }
	global void initCause(Exception cause) { }
	global void setMessage(String message) { }

}