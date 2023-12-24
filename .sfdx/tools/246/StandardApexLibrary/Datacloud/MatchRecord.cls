global class MatchRecord {
	global List<Datacloud.AdditionalInformationMap> additionalinformation;
	global List<Datacloud.FieldDiff> fielddiffs;
	global Double matchconfidence;
	global SObject record;
	global List<Datacloud.AdditionalInformationMap> getAdditionalInformation() { }
	global List<Datacloud.FieldDiff> getFieldDiffs() { }
	global Double getMatchConfidence() { }
	global SObject getRecord() { }

}