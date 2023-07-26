// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:ncomfort/screens/common/widgets.dart';
import 'package:ncomfort/screens/dashboard/side_menu/bank_details.dart';
import 'package:ncomfort/screens/dashboard/side_menu/my_profile.dart';

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
        automaticallyImplyLeading: true,
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
      drawer: NavDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: [MyPropertyScreen(), EnquiryScreen()],
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        DrawerHeader(
          child: Center(
            child: Column(
              children: [
                height10,
                CircleAvatar(
                  radius: 35,
                  backgroundColor: colorCasal,
                ),
                height10,
                TextWidget(
                  title: 'Daniel A. Castiglia',
                  textStyle: TextStyle(
                      color: colorTundora,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                height5,
                TextWidget(
                  title: 'ThomasMBain@dayre.com',
                  textStyle: TextStyle(
                      color: colorTundora,
                      fontWeight: FontWeight.w400,
                      fontSize: 13),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: colorCasal),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: ListView(
                children: [
                  ListTile(
                    dense: true,
                    visualDensity: VisualDensity(vertical: -2),
                    horizontalTitleGap: 0,
                    leading: Image.asset(
                      'assets/images/language.png',
                      width: 20,
                      height: 20,
                    ),
                    title: TextWidget(
                      title: 'عربى',
                      textStyle: TextStyle(
                          color: colorWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                    onTap: () => {},
                  ),
                  ListTile(
                    dense: true,
                    visualDensity: VisualDensity(vertical: -2),
                    horizontalTitleGap: 0,
                    leading: Image.asset(
                      'assets/images/user.png',
                      width: 20,
                      height: 20,
                    ),
                    title: TextWidget(
                      title: 'My Profile',
                      textStyle: TextStyle(
                          color: colorWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                    onTap: () => {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return MyProfileScreen();
                      }))
                    },
                  ),
                  ListTile(
                    dense: true,
                    visualDensity: VisualDensity(vertical: -2),
                    horizontalTitleGap: 0,
                    leading: Image.asset(
                      'assets/images/bar-chart-2_white.png',
                      width: 20,
                      height: 20,
                    ),
                    title: TextWidget(
                      title: 'My Properties',
                      textStyle: TextStyle(
                          color: colorWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    dense: true,
                    visualDensity: VisualDensity(vertical: -2),
                    horizontalTitleGap: 0,
                    leading: Image.asset(
                      'assets/images/dollar-sign.png',
                      width: 20,
                      height: 20,
                    ),
                    title: TextWidget(
                      title: 'Bank Details',
                      textStyle: TextStyle(
                          color: colorWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                    onTap: () => {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return BankDetailsScreen();
                      }))
                    },
                  ),
                  height30,
                  ListTile(
                    dense: true,
                    visualDensity: VisualDensity(vertical: -4),
                    horizontalTitleGap: 0,
                    title: TextWidget(
                      title: 'Legal Information',
                      textStyle: TextStyle(
                          color: colorWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                    onTap: () => {},
                  ),
                  ListTile(
                    dense: true,
                    visualDensity: VisualDensity(vertical: -4),
                    horizontalTitleGap: 0,
                    title: TextWidget(
                      title: 'Privacy Policy',
                      textStyle: TextStyle(
                          color: colorWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                    onTap: () => {},
                  ),
                  ListTile(
                    dense: true,
                    visualDensity: VisualDensity(vertical: -4),
                    horizontalTitleGap: 0,
                    title: TextWidget(
                      title: 'FAQ',
                      textStyle: TextStyle(
                          color: colorWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                    onTap: () => {},
                  ),
                  ListTile(
                    dense: true,
                    visualDensity: VisualDensity(vertical: -4),
                    horizontalTitleGap: 0,
                    title: TextWidget(
                      title: 'Feedback',
                      textStyle: TextStyle(
                          color: colorWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                    onTap: () => {},
                  ),
                  ListTile(
                    dense: true,
                    visualDensity: VisualDensity(vertical: -4),
                    horizontalTitleGap: 0,
                    title: TextWidget(
                      title: 'Logout',
                      textStyle: TextStyle(
                          color: colorWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                    onTap: () => {},
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
