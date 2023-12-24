global class PaymentMethodTokenizationRequest {
	global ConnectApi.AddressRequest address;
	global ConnectApi.CardPaymentMethodRequest cardPaymentMethod;
	global String paymentGatewayId;
	global PaymentMethodTokenizationRequest() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Integer hashCode() { }
	global String toString() { }

}