global class FindDuplicatesResult {
	global List<Datacloud.DuplicateResult> duplicateresults;
	global List<Database.Error> errors;
	global Boolean success;
	global List<Datacloud.DuplicateResult> getDuplicateResults() { }
	global List<Database.Error> getErrors() { }
	global Boolean isSuccess() { }

}