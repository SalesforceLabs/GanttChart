global class ProductSearchInput {
	global String categoryId;
	global List<String> fields;
	global ConnectApi.ProductSearchGroupingInput grouping;
	global Boolean includePrices;
	global Boolean includeQuantityRule;
	global Integer page;
	global Integer pageSize;
	global List<ConnectApi.RefinementInput> refinements;
	global String searchTerm;
	global String sortRuleId;
	global ProductSearchInput() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Integer hashCode() { }
	global String toString() { }

}