global class PromotionEvaluateInput {
	global ConnectApi.PromotionCartInput cart;
	global List<ConnectApi.PromotionCartDeliveryGroupInput> cartDeliveryGroups;
	global List<String> couponCodes;
	global String effectiveAccountId;
	global Boolean isItemizeHeaderAdjustments;
	global List<ConnectApi.PromotionParentProductsInput> parentProducts;
	global List<ConnectApi.PromotionProductCategoriesInput> productCategories;
	global List<String> segments;
	global String webStoreId;
	global PromotionEvaluateInput() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Integer hashCode() { }
	global String toString() { }

}