global class CdpSegmentInput {
	global Map<String,String> additionalMetadata;
	global String dataSpace;
	global String description;
	global String developerName;
	global String displayName;
	global ConnectApi.CdpSegmentEinsteinGptSegmentsUI einsteinGptSegmentsUICriteria;
	global ConnectApi.CdpSegmentDbtInput includeDbt;
	global ConnectApi.CdpSegmentLookalikeInput lookalikeCriteria;
	global ConnectApi.PublishSchedule publishSchedule;
	global String publishScheduleEndDate;
	global String publishScheduleStartDateTime;
	global String segmentOnApiName;
	global ConnectApi.SegmentType segmentType;
	global CdpSegmentInput() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Integer hashCode() { }
	global String toString() { }

}