// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:ncomfort/data/api/api.dart';
import 'package:ncomfort/dims/dim.dart';
import 'package:ncomfort/main.dart';
import 'package:ncomfort/screens/common/utils.dart';
import 'package:ncomfort/screens/common/widgets.dart';

import '../../dims/colors.dart';
import '../../dims/constant.dart';
import '../dashboard/dashboard/dashboard.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  void initState() {
    final bool? isUserLogin = preferences.getBool(isLogin);
    if (isUserLogin != null) {
      if (isUserLogin) {
        Future.delayed(Duration(seconds: 0), () {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return DashboardScreen();
          }));
        });
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  )),
            ],
          ),
        ),
      ),
    );
  }

  loginUser(BuildContext context) async {
    final email = emailController.text;
    final password = passwordController.text;

    if (!context.mounted) {
      return;
    } else {
      if (email.isEmpty || password.isEmpty) {
        CommonUtils()
            .showErrorMessage(context, "Error", "All fields are required");
        return;
      } else {
        final formData = FormData.fromMap({
          'phone': email,
          'password': password,
        });
        final result = await ApiDB().loginApi(formData, context);
        if (result != null) {
          if (result.status == 200) {
            if (context.mounted) {
              preferences.setBool(isLogin, true);
              CommonUtils().showSuccessToast(context,
                  result.data!.name.toString(), result.response.toString());
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) {
                return DashboardScreen();
              }));
            }
          } else {
            if (context.mounted) {
              CommonUtils().showErrorMessage(
                  context, "Error", result.response.toString());
            }
          }
        }
      }
    }
  }
}
