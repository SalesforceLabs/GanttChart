global class JwsVerifierOutput {
	global ConnectApi.DigitalCertificateRepresentation digitalCertificate;
	global String jwsPayload;
	global String processTime;
	global String signature;
	global JwsVerifierOutput() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Double getBuildVersion() { }
	global Integer hashCode() { }
	global String toString() { }

}