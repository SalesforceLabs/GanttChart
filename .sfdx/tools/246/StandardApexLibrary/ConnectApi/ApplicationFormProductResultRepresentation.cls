global class ApplicationFormProductResultRepresentation {
	global String applicationFormProductId;
	global String createdById;
	global Datetime createdDate;
	global String currencyIsoCode;
	global List<ConnectApi.CustomFieldsResultRepresentation> customFields;
	global String disbursementMethod;
	global Boolean hasAutomaticPayment;
	global Boolean hasElectronicStatement;
	global Boolean isATMCardRequired;
	global Boolean isCheckbookRequired;
	global String lastModifiedById;
	global Datetime lastModifiedDate;
	global String loanType;
	global String ownerId;
	global String productId;
	global String recordTypeId;
	global Double requestedAmount;
	global Integer requestedTerm;
	global ApplicationFormProductResultRepresentation() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Double getBuildVersion() { }
	global Integer hashCode() { }
	global String toString() { }

}