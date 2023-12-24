global class OrderSummaryRepresentation {
	global ConnectApi.OrderSummaryAdjustmentAggregates adjustmentAggregates;
	global Datetime createdDate;
	global String currencyIsoCode;
	global Map<String,ConnectApi.RecordField> fields;
	global String orderNumber;
	global String orderSummaryId;
	global Datetime orderedDate;
	global String ownerId;
	global String status;
	global String totalAmount;
	global OrderSummaryRepresentation() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Double getBuildVersion() { }
	global Integer hashCode() { }
	global String toString() { }

}