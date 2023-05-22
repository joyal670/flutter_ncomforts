import 'data.dart';

class LoginResponse {
	int? status;
	String? response;
	Data? data;

	LoginResponse({this.status, this.response, this.data});

	factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
				status: json['status'] as int?,
				response: json['response'] as String?,
				data: json['data'] == null
						? null
						: Data.fromJson(json['data'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'status': status,
				'response': response,
				'data': data?.toJson(),
			};
}
