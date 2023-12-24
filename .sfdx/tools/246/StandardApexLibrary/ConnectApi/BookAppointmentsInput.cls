global class BookAppointmentsInput {
	global String appointmentId;
	global String appointmentType;
	global String channelId;
	global String externalPatientId;
	global ConnectApi.HCAddressInput facilityAddress;
	global String healthcarePractitionerFacilityId;
	global String note;
	global String patientId;
	global String serviceType;
	global ConnectApi.GetSlotStatusInput slot;
	global BookAppointmentsInput() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Integer hashCode() { }
	global String toString() { }

}