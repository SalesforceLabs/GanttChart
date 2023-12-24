global class CartItemCollection {
	global ConnectApi.CartCouponCollection cartCoupons;
	global List<ConnectApi.CartItemResult> cartItems;
	global ConnectApi.CartPromotionCollection cartPromotions;
	global ConnectApi.CartSummary cartSummary;
	global Integer count;
	global String currentPageToken;
	global String currentPageUrl;
	global Boolean hasErrors;
	global String nextPageToken;
	global String nextPageUrl;
	global String previousPageToken;
	global String previousPageUrl;
	global CartItemCollection() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Double getBuildVersion() { }
	global Integer hashCode() { }
	global String toString() { }

}