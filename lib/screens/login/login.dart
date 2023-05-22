import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:ncomfort/data/api/api.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color(0xFF34626C),
                height: 300,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/login.png'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Login'.toUpperCase(),
                      style: const TextStyle(
                          color: Color(0xFFC6B497),
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: 'Enter Mobile Number',
                            prefixIcon: Icon(Icons.phone_android),
                            prefixIconColor: Colors.grey),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: Colors.grey),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF34626C)),
                              onPressed: () {
                                loginUser(context);
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal),
                              ))),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  loginUser(BuildContext context) async {
    final email = emailController.text;
    final password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      MotionToast.error(
        title: const Text(
          'All fields are required',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        description: const Text('Please enter all fields'),
        position: MotionToastPosition.top,
        barrierColor: Colors.black.withOpacity(0.3),
        width: 300,
        height: 80,
        dismissable: false,
      ).show(context);
      return;
    } else {
      final formData = FormData.fromMap({
        'phone': email,
        'password': password,
      });
      final result = await ApiDB().loginApi(formData, context);
      // ignore: use_build_context_synchronously
      if (result != null) {
        if (result.status == 200) {
          MotionToast.success(
            title: Text(
              'Welcome ${result?.data?.name}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            description: Text('${result?.response}'),
            position: MotionToastPosition.top,
            barrierColor: Colors.black.withOpacity(0.3),
            width: 300,
            height: 80,
            dismissable: false,
          ).show(context);
        } else {
          MotionToast.error(
            title: Text(
              'Error',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            description: Text('${result?.response}'),
            position: MotionToastPosition.top,
            barrierColor: Colors.black.withOpacity(0.3),
            width: 300,
            height: 80,
            dismissable: false,
          ).show(context);
        }
      }
    }
  }
}
