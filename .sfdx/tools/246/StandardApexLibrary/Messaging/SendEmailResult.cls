global class SendEmailResult {
	global List<Messaging.SendEmailError> errors;
	global Boolean success;
	global List<Messaging.SendEmailError> getErrors() { }
	global Boolean isSuccess() { }

}