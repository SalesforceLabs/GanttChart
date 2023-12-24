global class OrderItemSummaryLookupOutput {
	global ConnectApi.OrderItemSummaryAdjustmentAggregates adjustmentAggregates;
	global List<ConnectApi.OrderSummaryAdjustment> adjustments;
	global String currencyIsoCode;
	global Map<String,ConnectApi.RecordField> fields;
	global String id;
	global ConnectApi.OrderSummaryProductLookupOutput product;
	global OrderItemSummaryLookupOutput() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Double getBuildVersion() { }
	global Integer hashCode() { }
	global String toString() { }

}