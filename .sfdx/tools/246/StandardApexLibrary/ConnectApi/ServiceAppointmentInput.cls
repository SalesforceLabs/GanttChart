global class ServiceAppointmentInput {
	global String additionalInformation;
	global String appointmentType;
	global String city;
	global String comments;
	global String contactId;
	global String country;
	global String description;
	global String engagementChannelTypeId;
	global List<ConnectApi.ExtendedFieldInput> extendedFields;
	global String parentRecordId;
	global String postalCode;
	global Datetime schedEndTime;
	global Datetime schedStartTime;
	global String serviceTerritoryId;
	global String state;
	global String street;
	global String subject;
	global String workTypeId;
	global ServiceAppointmentInput() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Integer hashCode() { }
	global String toString() { }

}