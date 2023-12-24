global class MarketingIntegration {
	global Object clone() { }
	global static ConnectApi.Form getForm(String siteId, String formId) { }
	global static ConnectApi.Form saveForm(String siteId, ConnectApi.FormInput formInput) { }
	global static ConnectApi.FormSubmission submitForm(String siteId, String formId, ConnectApi.FormSubmissionInput formSubmissionInput) { }

}