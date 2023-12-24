global class Personalization {
	global Object clone() { }
	global static ConnectApi.Audience createAudience(String communityId, ConnectApi.AudienceInput audience) { }
	global static ConnectApi.TargetCollection createTargets(String communityId, ConnectApi.TargetCollectionInput target) { }
	global static void deleteAudience(String communityId, String audienceId) { }
	global static void deleteTarget(String communityId, String targetId) { }
	global static ConnectApi.Audience getAudience(String communityId, String audienceId, Boolean includeAudienceCriteria) { }
	global static List<ConnectApi.BatchResult> getAudienceBatch(String communityId, List<String> audienceIds) { }
	global static ConnectApi.AudienceCollection getAudiences(String communityId, String ipAddress, String domain, String userId, ConnectApi.PublishStatus publishStatus, Boolean includeAudienceCriteria, List<String> targetTypes, String recordId) { }
	global static ConnectApi.AudienceCollection getAudiences(String communityId, String ipAddress, String domain, String userId, ConnectApi.PublishStatus publishStatus, Boolean includeAudienceCriteria, List<String> targetTypes) { }
	global static ConnectApi.Target getTarget(String communityId, String targetId) { }
	global static List<ConnectApi.BatchResult> getTargetBatch(String communityId, List<String> targetIds) { }
	global static ConnectApi.TargetCollection getTargets(String communityId, String ipAddress, String domain, String userId, ConnectApi.PublishStatus publishStatus, String recordId, List<String> targetTypes, Boolean includeAudience, Boolean includeAllMatchingTargetsWithinGroup, List<String> groupNames) { }
	global static ConnectApi.Audience updateAudience(String communityId, String audienceId, ConnectApi.AudienceInput audience) { }
	global static ConnectApi.TargetCollection updateTargets(String communityId, ConnectApi.TargetCollectionUpdateInput target) { }

}