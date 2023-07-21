// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ncomfort/dims/dim.dart';
import 'package:ncomfort/screens/common/widgets.dart';

import '../../../dims/colors.dart';

class EnquiryDeatilsScreen extends StatelessWidget {
  const EnquiryDeatilsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorCasal,
        title: TextWidget(title: 'Enquiry Details'),
      ),
      body: Material(
        elevation: 7,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              height10,
              TextWidget(
                title: "Date : 20 - 05 - 2020",
                textStyle: TextStyle(color: colorDoveGray),
              ),
              height15,
              Divider(),
              height15,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Rectangle.png',
                    width: 100,
                    height: 65,
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
                        height5,
                        TextWidget(
                          title: 'Appartment for Rent',
                          textStyle: TextStyle(color: colorCarnation),
                        ),
                        height10,
                        TextWidget(
                          title: 'View',
                          textStyle: TextStyle(
                              color: colorCasal,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              height15,
              Divider(),
              height15,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: colorGrannySmith,
                    foregroundColor: colorGrannySmith,
                    child: Icon(
                      Icons.person,
                      color: colorCasal,
                    ),
                  ),
                  width15,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          title: 'Thomas M',
                          textStyle: TextStyle(
                              color: colorBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        height10,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              title: 'Email ID :',
                              textStyle: TextStyle(
                                  color: colorDoveGray,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13),
                            ),
                            width5,
                            Expanded(
                              child: TextWidget(
                                title: 'ThomasMBain@dayrep.com',
                                textStyle: TextStyle(
                                    color: colorDoveGray,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                            )
                          ],
                        ),
                        height10,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              title: 'Mobile Number :',
                              textStyle: TextStyle(
                                  color: colorDoveGray,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13),
                            ),
                            width5,
                            Expanded(
                              child: TextWidget(
                                title: '+971 542155874',
                                textStyle: TextStyle(
                                    color: colorDoveGray,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                            )
                          ],
                        ),
                        height10,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              title: 'Location :',
                              textStyle: TextStyle(
                                  color: colorDoveGray,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13),
                            ),
                            width5,
                            Expanded(
                              child: TextWidget(
                                title:
                                    'Enter Long Text Enter Long TextEnter Long TextEnter Long TextEnter :',
                                textStyle: TextStyle(
                                    color: colorDoveGray,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                        height20,
                        TextWidget(
                          title: 'Message :',
                          textStyle: TextStyle(
                              color: colorDoveGray,
                              fontWeight: FontWeight.normal,
                              fontSize: 13),
                        ),
                        height10,
                        TextWidget(
                          title:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ',
                          textStyle: TextStyle(
                              color: colorDoveGray,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              height20,
              Divider(),
              height10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextWidget(
                        title: "Status : ",
                        textStyle: TextStyle(
                            color: colorDoveGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      TextWidget(
                        title: "Pending",
                        textStyle: TextStyle(
                            color: colorCarnation,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  TextWidget(
                    title: "Change Status ",
                    textStyle: TextStyle(
                        decoration: TextDecoration.underline,
                        color: colorCasal,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              height15
            ],
          ),
        ),
      ),
    );
  }
}
