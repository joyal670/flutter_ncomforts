// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ncomfort/dims/dim.dart';
import 'package:ncomfort/screens/common/widgets.dart';

import '../../../dims/colors.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorCasal,
        title: TextWidget(
          title: 'My Profile',
          textStyle: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 15, color: colorWhite),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    height20,
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: colorCasal,
                    ),
                    height10,
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: colorCasal,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                            onPressed: () {},
                            child: TextWidget(title: 'Change Image')),
                        width10,
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: coloeSpanishGray,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                            onPressed: () {},
                            child: TextWidget(title: 'Remove')),
                      ],
                    ),
                    height25
                  ],
                ),
              ),
            ),
            height20,
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: colorCasal)),
                        fillColor: colorWhite,
                        filled: true,
                        hintText: 'Daniel A. Castiglia',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: coloeSilver))),
                  ),
                  height15,
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: colorCasal)),
                        fillColor: colorWhite,
                        filled: true,
                        hintText: 'DanielACastiglia@rhyta.com',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: coloeSilver))),
                  ),
                  height15,
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: colorCasal)),
                        fillColor: colorWhite,
                        filled: true,
                        hintText: '+971 1234567890',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: coloeSilver))),
                  ),
                  height15,
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: colorCasal)),
                        fillColor: colorWhite,
                        filled: true,
                        hintText: '883 Tree Frog Lane Kansas City, MO 64106',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: coloeSilver))),
                  ),
                  height15,
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: colorCasal,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero)),
                        onPressed: () {},
                        child: TextWidget(title: 'Update')),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
