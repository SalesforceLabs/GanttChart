global class GetDeletedResult {
	global List<Database.DeletedRecord> deletedrecords;
	global Date earliestdateavailable;
	global Date latestdatecovered;
	global List<Database.DeletedRecord> getDeletedRecords() { }
	global Date getEarliestDateAvailable() { }
	global Date getLatestDateCovered() { }

}