global class EmployeeProfiles {
	global Object clone() { }
	global static void deleteBannerPhoto(String employeeId) { }
	global static void deletePhoto(String employeeId) { }
	global static ConnectApi.BannerPhoto getBannerPhoto(String employeeId) { }
	global static ConnectApi.Photo getPhoto(String employeeId) { }
	global static ConnectApi.BannerPhoto setBannerPhoto(String employeeId, String fileId, Integer versionNumber) { }
	global static ConnectApi.BannerPhoto setBannerPhoto(String employeeId, ConnectApi.BinaryInput fileUpload) { }
	global static ConnectApi.BannerPhoto setBannerPhotoWithAttributes(String employeeId, ConnectApi.BannerPhotoInput bannerPhoto, ConnectApi.BinaryInput fileUpload) { }
	global static ConnectApi.BannerPhoto setBannerPhotoWithAttributes(String employeeId, ConnectApi.BannerPhotoInput bannerPhoto) { }
	global static ConnectApi.Photo setPhoto(String employeeId, String fileId, Integer versionNumber) { }
	global static ConnectApi.Photo setPhoto(String employeeId, ConnectApi.BinaryInput fileUpload) { }
	global static ConnectApi.Photo setPhotoWithAttributes(String employeeId, ConnectApi.PhotoInput photo, ConnectApi.BinaryInput fileUpload) { }
	global static ConnectApi.Photo setPhotoWithAttributes(String employeeId, ConnectApi.PhotoInput photo) { }

}