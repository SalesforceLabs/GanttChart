global class ApplicationFormAccountInput {
	global String accountNumber;
	global String accountSite;
	global String accountSource;
	global String annualRevenue;
	global ConnectApi.ApplicationFormAccountAddress billingAddress;
	global List<ConnectApi.CustomFieldsInputRepresentation> customFields;
	global String description;
	global String fax;
	global String industry;
	global String jigsaw;
	global String name;
	global String numberOfEmployees;
	global String ownerId;
	global String ownership;
	global String parentId;
	global String phone;
	global String rating;
	global String recordTypeId;
	global ConnectApi.ApplicationFormAccountAddress shippingAddress;
	global String sic;
	global String sicDesc;
	global String tickerSymbol;
	global String tier;
	global String type;
	global String website;
	global applicationFormAccountInput() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Integer hashCode() { }
	global String toString() { }

}