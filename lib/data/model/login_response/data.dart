class Data {
	String? apiToken;
	int? userId;
	String? email;
	String? name;
	String? profilePic;
	String? latitude;
	String? longitude;

	Data({
		this.apiToken, 
		this.userId, 
		this.email, 
		this.name, 
		this.profilePic, 
		this.latitude, 
		this.longitude, 
	});

	factory Data.fromJson(Map<String, dynamic> json) => Data(
				apiToken: json['api_token'] as String?,
				userId: json['user_id'] as int?,
				email: json['email'] as String?,
				name: json['name'] as String?,
				profilePic: json['profile_pic'] as String?,
				latitude: json['latitude'] as String?,
				longitude: json['longitude'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'api_token': apiToken,
				'user_id': userId,
				'email': email,
				'name': name,
				'profile_pic': profilePic,
				'latitude': latitude,
				'longitude': longitude,
			};
}
