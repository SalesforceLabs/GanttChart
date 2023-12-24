global class RenderEmailTemplateBodyResult {
	global List<Messaging.RenderEmailTemplateError> errors;
	global String mergedbody;
	global Boolean success;
	global List<Messaging.RenderEmailTemplateError> getErrors() { }
	global String getMergedBody() { }
	global Boolean getSuccess() { }

}