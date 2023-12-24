global class MergeResult {
	global List<Database.Error> errors;
	global Id id;
	global List<String> mergedrecordids;
	global Boolean success;
	global List<String> updatedrelatedids;
	global List<Database.Error> getErrors() { }
	global Id getId() { }
	global List<String> getMergedRecordIds() { }
	global List<String> getUpdatedRelatedIds() { }
	global Boolean isSuccess() { }

}