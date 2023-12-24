global class NestedSaveResult {
	global List<Database.RelationshipSaveResult> relationshipsaveresults;
	global List<Database.Error> getErrors() { }
	global Id getId() { }
	global List<Database.RelationshipSaveResult> getRelationshipSaveResults() { }
	global Boolean isSuccess() { }

}