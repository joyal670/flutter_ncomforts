// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ncomfort/dims/dim.dart';

import '../../../dims/colors.dart';
import '../../common/widgets.dart';

class BankDetailsScreen extends StatelessWidget {
  const BankDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorCasal,
          title: TextWidget(
            title: 'Bank Details',
            textStyle: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 15, color: colorWhite),
          ),
          actions: [
            TextButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/plus-circle.png',
                  width: 20,
                  height: 20,
                ),
                label: TextWidget(
                  title: 'Add Account',
                  textStyle: TextStyle(
                      color: colorWhite, fontWeight: FontWeight.normal),
                ))
          ],
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Material(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        title: 'Account Name',
                        textStyle: TextStyle(
                            color: colorBlack,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      height20,
                      DataWidget(
                        title: 'Account Number : ',
                        value: 'Daniel A. Castiglia',
                      ),
                      height10,
                      DataWidget(
                        title: 'IFSC Code :',
                        value: 'FBDC001',
                      ),
                      height10,
                      DataWidget(
                        title: 'Bank Name :',
                        value: 'SBI',
                      ),
                      height10,
                      DataWidget(
                        title: 'Branch Name : ',
                        value: 'Cochin',
                      ),
                      height15,
                      Row(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: colorCasal,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero)),
                              onPressed: () {},
                              child: TextWidget(title: 'Edit')),
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
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 2,
                  ),
                ),
            itemCount: 10));
  }
}

class DataWidget extends StatelessWidget {
  final title;
  final value;
  const DataWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextWidget(
          title: title,
          textStyle: TextStyle(
              color: coloTuna, fontSize: 14, fontWeight: FontWeight.w400),
        ),
        width10,
        TextWidget(
          title: value,
          textStyle: TextStyle(
              color: coloTuna, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
