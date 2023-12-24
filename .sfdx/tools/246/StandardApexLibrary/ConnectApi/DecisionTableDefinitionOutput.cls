global class DecisionTableDefinitionOutput {
	global ConnectApi.DecisionTableCollectOperator collectOperator;
	global String conditionCriteria;
	global ConnectApi.DecisionTableConditionType conditionType;
	global ConnectApi.DecisionTableHitPolicy decisionResultPolicy;
	global String description;
	global String fullName;
	global String id;
	global List<ConnectApi.DecisionTableParameterOutput> parameters;
	global String setupName;
	global List<ConnectApi.DecisionTableSourceCriteriaOutput> sourceCriteria;
	global String sourceObject;
	global ConnectApi.DecisionTableSourceType sourceType;
	global String sourceconditionLogic;
	global ConnectApi.DecisionTableStatus status;
	global ConnectApi.DecisionTableUsageType usageType;
	global DecisionTableDefinitionOutput() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Double getBuildVersion() { }
	global Integer hashCode() { }
	global String toString() { }

}