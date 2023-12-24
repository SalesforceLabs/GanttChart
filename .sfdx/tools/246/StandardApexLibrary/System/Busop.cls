global class Busop {
	global static void asyncUpdatePartnerPackageBooleanParam(String targetUserName, String paramName, Boolean value) { }
	global static void asyncUpdatePartnerPackageDateParam(String targetUserName, String paramName, Date value) { }
	global static void asyncUpdatePartnerPackageIntegerParam(String targetUserName, String paramName, Decimal value) { }
	global static String getOrgInfo(String orgId) { }
	global static String getPackageVersionString(String allPackageVersionId) { }
	global static Boolean isSandbox(String orgId) { }
	global static void refreshPackageLicenses(String lmoOrgId, String allPackageId) { }
	global static void savePackage(String packageId, String fieldName) { }
	global static void updatePartnerLicense(String targetUserName, String newStatus, Integer newNumberOfUsers, Date newExpirationDate, Date provisioningDate) { }

}