global class RelationshipSaveResult {
	global String relationshipname;
	global List<Database.NestedSaveResult> saveresults;
	global String getRelationshipName() { }
	global List<Database.NestedSaveResult> getSaveResults() { }

}