// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ncomfort/dims/colors.dart';
import 'package:ncomfort/dims/dim.dart';
import 'package:ncomfort/screens/common/widgets.dart';

import '../detailed_pages/enquiry_details.dart';

class EnquiryScreen extends StatelessWidget {
  const EnquiryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return EnquiryDeatilsScreen();
                    },
                  ));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                title: 'Thomas M',
                                textStyle: TextStyle(
                                    color: colorBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              height5,
                              TextWidget(
                                title: 'ThomasMBain@dayrep.com',
                                textStyle: TextStyle(
                                    color: colorDoveGray,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              )
                            ],
                          ),
                        ],
                      ),
                      height5,
                      Divider(),
                      height10,
                      Row(
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
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
                              ],
                            ),
                          )
                        ],
                      ),
                      height10,
                      Divider(),
                      height15,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              TextWidget(
                                title: 'Status :',
                                textStyle: TextStyle(
                                    color: colorTundora,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300),
                              ),
                              width5,
                              TextWidget(
                                title: 'Pending',
                                textStyle: TextStyle(
                                    color: colorCarnation,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          TextWidget(
                            title: 'Read',
                            textStyle: TextStyle(
                                color: colorCasal,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 10,
              );
            },
            itemCount: 10));
  }
}
