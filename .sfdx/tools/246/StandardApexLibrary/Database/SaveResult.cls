global class SaveResult {
	global List<Database.Error> errors;
	global Id id;
	global Boolean success;
	global List<Database.Error> getErrors() { }
	global Id getId() { }
	global Boolean isSuccess() { }

}