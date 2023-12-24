global class CommerceAddressCollection {
	global Integer count;
	global String currentPageToken;
	global String currentPageUrl;
	global List<ConnectApi.CommerceAddressOutput> items;
	global String nextPageToken;
	global String nextPageUrl;
	global Integer pageSize;
	global String previousPageToken;
	global String previousPageUrl;
	global ConnectApi.CommerceAddressSort sortOrder;
	global CommerceAddressCollection() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Double getBuildVersion() { }
	global Integer hashCode() { }
	global String toString() { }

}