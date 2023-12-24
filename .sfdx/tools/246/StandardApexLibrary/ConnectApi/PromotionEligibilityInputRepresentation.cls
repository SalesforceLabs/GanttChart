global class PromotionEligibilityInputRepresentation {
	global List<ConnectApi.PromotionEligibleChannelInput> eligibleChannels;
	global ConnectApi.CustomersDetailInputRepresentation eligibleCustomers;
	global ConnectApi.EventsDetailInputRepresentation eligibleEvent;
	global List<String> eligibleProductCategories;
	global List<String> eligibleProducts;
	global PromotionEligibilityInputRepresentation() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Integer hashCode() { }
	global String toString() { }

}