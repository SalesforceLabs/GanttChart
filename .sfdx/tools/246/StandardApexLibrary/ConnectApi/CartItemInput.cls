global class CartItemInput {
	global String cartDeliveryGroupId;
	global String productId;
	global String productSellingModelId;
	global String quantity;
	global Integer subscriptionTerm;
	global ConnectApi.CartItemType type;
	global CartItemInput() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Integer hashCode() { }
	global String toString() { }

}