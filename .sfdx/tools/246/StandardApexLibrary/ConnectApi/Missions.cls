global class Missions {
	global Object clone() { }
	global static ConnectApi.UserMissionActivitiesJob exportUserMissionsActivities(String communityId, String userId) { }
	global static ConnectApi.UserMissionActivityCollection getUserMissionsProgress(String communityId, String userId) { }
	global static ConnectApi.UserMissionActivitiesJob purgeUserMissionsActivities(String communityId, String userId) { }
	global static ConnectApi.UserMissionActivitiesJob purgeUserMissionsActivities(String communityId) { }
	global static ConnectApi.UserMissionActivityStatus updateUserMissionActivityCount(ConnectApi.UserMissionActivityType activityType, Integer activityCount, String communityId, String userId) { }

}