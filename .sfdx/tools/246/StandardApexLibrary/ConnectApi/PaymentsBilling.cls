global class PaymentsBilling {
	global static ConnectApi.PaymentLineApplyResponse applyPaymentLine(ConnectApi.PaymentLineApplyRequest PaymentLineApplyInput, String paymentId) { }
	global static ConnectApi.RefundLineApplyResponse applyRefundLine(ConnectApi.RefundLineApplyRequest RefundLineApplyInput, String refundId) { }
	global Object clone() { }
	global static ConnectApi.PaymentLineUnapplyResponse unapplyPaymentLine(ConnectApi.PaymentLineUnapplyRequest PaymentLineUnapplyInput, String paymentId, String paymentLineId) { }
	global static ConnectApi.PaymentLineUnapplyResponse unapplyPaymentLine(ConnectApi.PaymentLineUnapplyRequest PaymentLineUnapplyInput, String paymentLineId) { }

}