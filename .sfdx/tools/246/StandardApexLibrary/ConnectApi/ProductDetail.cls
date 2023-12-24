global class ProductDetail {
	global Map<String,ConnectApi.ProductAttributeSetInfo> attributeSetInfo;
	global ConnectApi.ProductMedia defaultImage;
	global ConnectApi.ProductEntitlement entitlement;
	global Map<String,String> fields;
	global String id;
	global List<ConnectApi.ProductMediaGroup> mediaGroups;
	global ConnectApi.ProductCategoryPath primaryProductCategoryPath;
	global ConnectApi.ProductClass productClass;
	global List<ConnectApi.ProductSellingModel> productSellingModels;
	global ConnectApi.PurchaseQuantityRule purchaseQuantityRule;
	global String urlName;
	global ConnectApi.ProductAttributeSet variationAttributeSet;
	global ConnectApi.ProductVariationInfo variationInfo;
	global String variationParentId;
	global ProductDetail() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Double getBuildVersion() { }
	global Integer hashCode() { }
	global String toString() { }

}