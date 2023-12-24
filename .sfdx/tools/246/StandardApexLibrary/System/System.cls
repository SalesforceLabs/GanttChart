/**
 * Contains methods for system operations, such as writing debug messages and scheduling jobs.
 */
global class System {
	/**
	 * Stops the specified job. The stopped job is still visible in the job queue in the Salesforce user interface.
	 */
	global static void abortJob(String jobId) { }
	/**
	 * Asserts that the specified condition is true. If it is not, a fatal error is returned that causes code execution to halt.
	 */
	global static void assert(Boolean condition, Object msg) { }
	/**
	 * Asserts that the specified condition is true. If it is not, a fatal error is returned that causes code execution to halt.
	 */
	global static void assert(Boolean condition) { }
	/**
	 * Asserts that the first two arguments are the same. If they are not, a fatal error is returned that causes code execution to halt.
	 */
	global static void assertEquals(Object expected, Object actual, Object msg) { }
	/**
	 * Asserts that the first two arguments are the same. If they are not, a fatal error is returned that causes code execution to halt.
	 */
	global static void assertEquals(Object expected, Object actual) { }
	/**
	 * Asserts that the first two arguments are different. If they are the same, a fatal error is returned that causes code execution to halt.
	 */
	global static void assertNotEquals(Object expected, Object actual, Object msg) { }
	/**
	 * Asserts that the first two arguments are different. If they are the same, a fatal error is returned that causes code execution to halt.
	 */
	global static void assertNotEquals(Object expected, Object actual) { }
	/**
	 * attach a finalizer for a queueable job.
	 */
	global static void attachFinalizer(Object finalizer) { }
	global static void changeOwnPassword(String oldPassword, String newPassword) { }
	/**
	 * Returns a reference to the current page. This is used with Visualforce pages.
	 */
	global static System.PageReference currentPageReference() { }
	/**
	 * Returns the current time in milliseconds, which is expressed as the difference between the current time and midnight, January 1, 1970 UTC.
	 */
	global static Long currentTimeMillis() { }
	/**
	 * Writes the specified message, in string format, to the execution debug log with the specified log level.
	 */
	global static void debug(Object logLevel, Object o) { }
	/**
	 * Writes the specified message, in string format, to the execution debug log. The `DEBUG` log level is used.
	 */
	global static void debug(Object o) { }
	global static Id enqueueJob(Object queueable, Object asyncoptions) { }
	/**
	 * Add a job for queue for asynchronous execution with a minimum delay in minutes
	 */
	global static Id enqueueJob(Object queueable, Integer delay) { }
	/**
	 * Add a job to the queue for asynchronous execution.
	 */
	global static Id enqueueJob(Object queueable) { }/**
	 * Returns `true` if both arguments are equal. Otherwise, returns `false`.
	 */
	global static Boolean equals(Object left, Object right) { }
	/**
	 * Returns the read write mode set for an organization during Salesforce.com upgrades and downtimes.
	 */
	global static System.ApplicationReadWriteMode getApplicationReadWriteMode() { }
	/**
	 * Get the short code string for a given Quiddity
	 */
	global static String getQuiddityShortCode(System.Quiddity quiddity) { }
	/**
	 * Returns the hash code of the specified object.
	 */
	global static Integer hashCode(Object obj) { }
	/**
	 * Returns `true` if a batch Apex job invoked the executing code, or `false` if not. In API version 35.0 and earlier, also returns `true` if a queueable Apex job invoked the code.
	 */
	global static Boolean isBatch() { }
	/**
	 * Returns `true` if the currently executing code is invoked by code contained in a method annotated with future; `false` otherwise.
	 */
	global static Boolean isFunctionCallback() { }
	/**
	 * Returns `true` if the currently executing code is invoked by code contained in a method annotated with future; `false` otherwise.
	 */
	global static Boolean isFuture() { }
	/**
	 * Returns `true` if a queueable Apex job invoked the executing code. Returns `false` if not, including if a batch Apex job or a future method invoked the code.
	 */
	global static Boolean isQueueable() { }
	global static Boolean isRunningElasticCompute() { }
	/**
	 * Returns `true` if the currently executing code is invoked by a scheduled Apex job; `false` otherwise.
	 */
	global static Boolean isScheduled() { }
	/**
	 * Moves the specified user’s password to a different user.
	 */
	global static void movePassword(Id targetUserId, Id sourceUserId) { }
	/**
	 * Returns the current date and time in the GMT time zone.
	 */
	global static Datetime now() { }
	/**
	 * For all the workitem ids passed in, perform the given action
	 */
	global static List<Id> process(List<Id> workItemIds, String action, String comments, String nextApprover) { }
	/**
	 * Deletes asynchronous Apex job records for jobs that have finished execution before the specified date with a Completed, Aborted, or Failed status, and returns the number of records deleted.
	 */
	global static Integer purgeOldAsyncJobs(Date date) { }
	/**
	 * Returns a two-part version that contains the major and minor version numbers of a package.
	 */
	global static System.Version requestVersion() { }
	/**
	 * Resets the password for the specified user.
	 */
	global static System.ResetPasswordResult resetPassword(Id userId, Boolean sendUserEmail) { }
	/**
	 * Resets the user's password and sends an email to the user with their new password. You specify the email template that is sent to the specified user. Use this method for external users of communities.
	 */
	global static System.ResetPasswordResult resetPasswordWithEmailTemplate(Id userId, Boolean sendUserEmail, String emailTemplateName) { }
	/**
	 * Changes the current user to the specified user.
	 */
	global static void runAs(SObject user, Object block) { }
	/**
	 * Changes the current package version to the package version specified in the argument.
	 */
	global static void runAs(Package.Version version) { }
	/**
	 * Use `schedule` with an Apex class that implements the Schedulable interface to schedule the class to run at the time specified by a Cron expression.
	 */
	global static String schedule(String jobName, String cronExp, Object schedulable) { }
	/**
	 * Schedules a batch job to run once in the future after the specified the time interval, with the specified job name and scope size. Returns the scheduled job ID (CronTrigger ID).
	 */
	global static String scheduleBatch(Object batchable, String jobName, Integer minutesFromNow, Integer scopeSize) { }
	/**
	 * Schedules a batch job to run once in the future after the specified time interval and with the specified job name.
	 */
	global static String scheduleBatch(Object batchable, String jobName, Integer minutesFromNow) { }
	/**
	 * Sets the password for the specified user.
	 */
	global static void setPassword(Id userId, String password) { }
         /**
	 * Submits the processed approvals. The current user is the submitter and the entry criteria is evaluated for all processes applicable to the current user.
	 */	
	global static List<Id> submit(List<Id> ids, String comments, String nextApprover) { }
        /**
	 * Returns the current date in the current user's time zone.
	 */	
	global static Date today() { }

}