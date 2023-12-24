global class ReferralEventInput {
	global String contactId;
	global String email;
	global ConnectApi.EventTypeResource eventType;
	global String firstName;
	global Datetime joiningDate;
	global String lastName;
	global String orderReferenceId;
	global String productId;
	global Double purchaseAmount;
	global Integer purchaseQuantity;
	global Map<String,String> referralAdditionalAttributes;
	global String referralCode;
	global Map<String,String> transactionJournalAdditionalAttributes;
	global ReferralEventInput() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Integer hashCode() { }
	global String toString() { }

}