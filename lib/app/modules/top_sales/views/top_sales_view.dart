// ignore_for_file: unused_local_variable, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktc_app/app/core/app_config/app_utils.dart';
import 'package:ktc_app/app/routes/app_pages.dart';

import '../controllers/top_sales_controller.dart';

class TopSalesView extends GetView<TopSalesController> {
  @override
  Widget build(BuildContext context) {
    final salesCardText = Theme.of(context).textTheme.headlineLarge?.copyWith(
        fontFamily: 'Montserrat',
        fontSize: 14.5,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color: Colors.indigo);
    final salesCardTextt = Theme.of(context).textTheme.headlineLarge?.copyWith(
        fontFamily: 'Montserrat',
        fontSize: 14.5,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color: Colors.black87);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        centerTitle: true,
        title: Text(
          "Top Sales",
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontFamily: 'Montserrat',
              fontSize: 23.0,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () => Get.toNamed(Routes.DASHBOARD),
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            )),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 90),
              child: Column(
                children: List.generate(3, (index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          color: Colors.indigo[50],
                          shadowColor: Colors.indigo[200],
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Row(
                              // mainAxisSize: MainAxisSize.min,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Item 2(1)',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge
                                      ?.copyWith(
                                          fontFamily: 'Montserrat',
                                          fontSize: 14.5,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                          color: Colors.black87),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              // height: 200,
              color: Colors.white,
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Total',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal),
                      ),
                      subtitle: Text(
                        '2250',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Advance',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal),
                      ),
                      subtitle: Text(
                        '1200',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Balance',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal),
                      ),
                      subtitle: Text(
                        '1000',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar:  BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.indigo[400],
          selectedItemColor: Colors.purple[50],
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () => Get.toNamed(Routes.DASHBOARD),
                child: Icon(Icons.home),
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.download), label: 'Downloads'),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    AppUtil.showSearchDialog(context);
                  },
                  child: Icon(Icons.search),
                ),
                label: 'Search'),
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
