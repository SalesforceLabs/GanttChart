global class ProgramApplicationInputRepresentation {
	global String accountId;
	global List<ConnectApi.ProgramApplicationItemInputRepresentation> applicationItems;
	global String description;
	global List<ConnectApi.ProgramApplicationFileInputRepresentation> files;
	global String programId;
	global ProgramApplicationInputRepresentation() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Integer hashCode() { }
	global String toString() { }

}