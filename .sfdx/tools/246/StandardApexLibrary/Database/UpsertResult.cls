global class UpsertResult {
	global Boolean created;
	global List<Database.Error> errors;
	global Id id;
	global Boolean success;
	global List<Database.Error> getErrors() { }
	global Id getId() { }
	global Boolean isCreated() { }
	global Boolean isSuccess() { }

}