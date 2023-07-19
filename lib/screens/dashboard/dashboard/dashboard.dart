// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ncomfort/screens/common/widgets.dart';

import '../../../dims/colors.dart';
import '../../../dims/dim.dart';
import 'enquiry.dart';
import 'my_property.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colorCasal,
        bottom: TabBar(
            controller: _tabController,
            labelColor: colorPumice,
            indicatorWeight: 5,
            indicatorColor: colorIndianKhaki,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: colorPumice,
            tabs: [
              Tab(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/bar-chart-2.png',
                      width: 30,
                      height: 30,
                    ),
                    width10,
                    TextWidget(
                      title: 'My Property',
                    )
                  ],
                ),
              ),
              Tab(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/message-square.png',
                      width: 30,
                      height: 30,
                    ),
                    width10,
                    TextWidget(title: 'Enquiry'),
                    width10,
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: colorWhite,
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: CircleAvatar(
                          backgroundColor: colorCarnation,
                          child: TextWidget(
                            title: '2',
                            textStyle:
                                TextStyle(color: colorWhite, fontSize: 9),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [MyPropertyScreen(), EnquiryScreen()],
      ),
    );
  }
}
