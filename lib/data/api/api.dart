import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

import '../model/login_response/login_response.dart';
import '../url/url.dart';

abstract class ApiCalls {
  Future<LoginResponse?> loginApi(FormData formData, BuildContext context);
}

class ApiDB extends ApiCalls {
  final dio = Dio();
  final url = URL();

  ApiDB() {
    dio.options = BaseOptions(
      baseUrl: url.baseUrl,
      responseType: ResponseType.json,
    );
  }

  @override
  Future<LoginResponse?> loginApi(
      FormData formData, BuildContext context) async {
    try {
      final result = await dio.post(url.loginEndpoint, data: formData);
      return LoginResponse.fromJson(result.data);
    } catch (e) {
      MotionToast.error(
        title: const Text(
          'Error',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        description: const Text('Please enter your name'),
        position: MotionToastPosition.top,
        barrierColor: Colors.black.withOpacity(0.3),
        width: 300,
        height: 80,
        dismissable: false,
      ).show(context);
    }
  }
}
