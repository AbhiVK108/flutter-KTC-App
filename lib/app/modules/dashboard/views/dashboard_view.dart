// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktc_app/app/core/app_config/app_colors.dart';
import 'package:ktc_app/app/routes/app_pages.dart';
// import 'package:ktc_app/app/core/app_config/app_colors.dart';

import '../controllers/dashboard_controller.dart';

// ignore: must_be_immutable
class DashboardView extends GetView<DashboardController> {
  var data = [
    {"title": "assets/action.png", "subtitle": "ITEMS","routes":Routes.ITEMS_LIST},
    {"title": "assets/sales.png", "subtitle": "SALES"},
    {"title": "assets/trend.png", "subtitle": "TOP SALES"},
    {"title": "assets/one-day.png", "subtitle": "DAY SALES"},
    {"title": "assets/month.png", "subtitle": "MONTHLY"},
    {"title": "assets/calendar.png", "subtitle": "YEARLY"},
    {"title": "assets/customer-service.png", "subtitle": "CUSTOMERS","routes":Routes.CUSTOMERS},
  ];

  DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
     
      body: Container(
        color: Colors.indigo[400],
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(),
                height: height * 0.14,
                width: width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/logo.jpg',
                        ),
                        radius: 31.2,
                      ),
                      title: Text(
                        'Kalyan',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontFamily: 'Montserrat',
                                fontSize: 23.0,
                                fontWeight: FontWeight.w800,
                                fontStyle: FontStyle.italic,
                                color: AppColor.white),
                      ),
                      subtitle: Text(
                        'Times & Communication',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontFamily: 'Montserrat',
                                fontSize: 23.0,
                                fontWeight: FontWeight.w800,
                                fontStyle: FontStyle.italic,
                                color: AppColor.white),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                  
                  ],
                ),
              ),
              Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0))),
                  height: height * 0.86,
                  width: width,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.8,
                    ),
                    // shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () => Get.toNamed(data[index]["routes"].toString()),
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0)),
                                color: Colors.indigo[50],
                                shadowColor: Colors.black,
                                elevation: 2.5,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Image.asset(
                                          data[index]["title"].toString(),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12.0,
                                      ),
                                      Text(data[index]["subtitle"].toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Montserrat',
                                                  fontStyle: FontStyle.normal,
                                                  color: Colors.indigo)),
                                    ],
                                  ),
                                )),
                          ));
                    },
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.indigo[400],
          selectedItemColor: Colors.purple[50],
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: 'Downloads'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () => Get.toNamed(Routes.LOGIN),
                  child: Icon(Icons.logout),
                ),
                label: 'Signout')
          ]),
    );
  }
}
