global class QueryLocator {
	/**
	 * Gets the underlying query for this QueryLocator
	 */
	global String getQuery() { }
	/**
	 * Gets an iterator over the results of this QueryLocator
	 */
	global Database.QueryLocatorIterator iterator() { }
	global List<SObject> querymore(Integer num) { }

}