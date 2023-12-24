global class CartSummary {
	global String accountId;
	global ConnectApi.AsyncOperationStatus asyncOperationStatus;
	global String cartId;
	global String currencyIsoCode;
	global String grandTotalAmount;
	global Boolean isSecondary;
	global ConnectApi.CartMessagesSummary messagesSummary;
	global String name;
	global String orderOwnerId;
	global String ownerId;
	global String purchaseOrderNumber;
	global ConnectApi.CartStatus status;
	global ConnectApi.CartTaxType taxType;
	global String totalChargeAmount;
	global String totalListPrice;
	global String totalProductAmount;
	global String totalProductAmountAfterAdjustments;
	global String totalProductCount;
	global String totalProductListAmount;
	global String totalPromotionalAdjustmentAmount;
	global String totalTaxAmount;
	global ConnectApi.CartType type;
	global Integer uniqueProductCount;
	global String webstoreId;
	global CartSummary() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Double getBuildVersion() { }
	global Integer hashCode() { }
	global String toString() { }

}