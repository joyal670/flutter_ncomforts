// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ncomfort/dims/colors.dart';
import 'package:ncomfort/dims/dim.dart';
import 'package:ncomfort/screens/common/widgets.dart';
import 'package:ncomfort/screens/dashboard/detailed_pages/property_details.dart';

class MyPropertyScreen extends StatelessWidget {
  const MyPropertyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return PropertyDetails();
                },
              ));
            },
            child: Container(
              padding: EdgeInsets.all(20),
              color: colorWhite,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/Rectangle.png',
                    width: 125,
                    height: 90,
                  ),
                  width20,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          title: 'SAR 250.00',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        height5,
                        TextWidget(
                          title:
                              '2 Bed Apartment /2 months free / free maintenance',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          );
        },
        itemCount: 10);
  }
}
