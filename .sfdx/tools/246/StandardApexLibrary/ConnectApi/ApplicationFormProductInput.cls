global class ApplicationFormProductInput {
	global String currencyIsoCode;
	global List<ConnectApi.CustomFieldsInputRepresentation> customFields;
	global String disbursementMethod;
	global Boolean hasAutomaticPayment;
	global Boolean hasElectronicStatement;
	global Boolean isATMCardRequired;
	global Boolean isCheckbookRequired;
	global String loanType;
	global String productId;
	global String recordTypeId;
	global Double requestedAmount;
	global Integer requestedTerm;
	global applicationFormProductInput() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Integer hashCode() { }
	global String toString() { }

}