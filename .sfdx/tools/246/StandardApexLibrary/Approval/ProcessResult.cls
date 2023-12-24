global class ProcessResult {
	global List<Id> actorids;
	global String entityid;
	global List<Database.Error> errors;
	global String instanceid;
	global String instancestatus;
	global List<Id> newworkitemids;
	global Boolean success;
	global List<Id> getActorIds() { }
	global String getEntityId() { }
	global List<Database.Error> getErrors() { }
	global String getInstanceId() { }
	global String getInstanceStatus() { }
	global List<Id> getNewWorkitemIds() { }
	global Boolean isSuccess() { }

}