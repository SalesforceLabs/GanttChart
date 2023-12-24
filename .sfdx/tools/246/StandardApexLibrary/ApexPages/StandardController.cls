global class StandardController {
	global StandardController(SObject sobject) { }
	/**
	 * Add a reference to each field whose name is specified in list of strings so it is retrieved when the record is loaded by the controller.
	 */
	global void addFields(List<String> fieldNames) { }
	/**
	 * Cancel changes; returning returl
	 */
	global System.PageReference cancel() { }
	/**
	 * Delete a record
	 */
	global System.PageReference delete() { }
	/**
	 * Edit a record
	 */
	global System.PageReference edit() { }
	/**
	 * Get the ID for the subject record
	 */
	global String getId() { }
	/**
	 * Get the subject record
	 */
	global SObject getRecord() { }
	/**
	 * Save any modified or new records
	 */
	global System.PageReference save() { }
	/**
	 * Get View URL for a record
	 */
	global System.PageReference view() { }

}