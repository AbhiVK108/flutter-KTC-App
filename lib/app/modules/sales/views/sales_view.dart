// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:ktc_app/app/core/app_config/app_colors.dart';
import 'package:ktc_app/app/core/app_config/app_utils.dart';
import 'package:ktc_app/app/routes/app_pages.dart';
import '../controllers/sales_controller.dart';

class SalesView extends GetView<SalesController> {
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
          "Total Sales",
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
                children: List.generate(5, (index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shadowColor: Colors.indigo[50],
                          elevation: 3.0,
                          color: Colors.indigo[50],
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'No: 1002',
                                      style: salesCardTextt,
                                    ),
                                    Text(
                                      'Apr 15, 2024',
                                      style: salesCardTextt,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Divider(
                                  height: 1.5,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Name:', style: salesCardTextt),
                                          Text('Phone No:',
                                              style: salesCardTextt),
                                          Text(
                                            'Address:',
                                            style: salesCardTextt,
                                          ),
                                          Text(
                                            'Particulars:',
                                            style: salesCardTextt,
                                          ),
                                          Text(
                                            'Item::',
                                            style: salesCardTextt,
                                          ),
                                          Text(
                                            'IMEI:',
                                            style: salesCardTextt,
                                          ),
                                          Text(
                                            'Estimated Amount Rs:',
                                            style: salesCardTextt,
                                          ),
                                          Text(
                                            'Advance Rs:',
                                            style: salesCardTextt,
                                          ),
                                          Text(
                                            'Balance Rs:',
                                            style: salesCardTextt,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Gajula Krishna ',
                                            style: salesCardText,
                                          ),
                                          Text(
                                            '9849410172',
                                            style: salesCardText,
                                          ),
                                          Text(
                                            'Karimnagar',
                                            style: salesCardText,
                                          ),
                                          Text(
                                            'Testing Sms',
                                            style: salesCardText,
                                          ),
                                          Text(
                                            'Bl 5c Battary',
                                            style: salesCardText,
                                          ),
                                          Text(
                                            'Karimnagar',
                                            style: salesCardText,
                                          ),
                                          Text(
                                            '250',
                                            style: salesCardText,
                                          ),
                                          Text(
                                            '250',
                                            style: salesCardText,
                                          ),
                                          Text(
                                            '0',
                                            style: salesCardText,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Divider(
                                  height: 1.5,
                                  color: Colors.black,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.edit,
                                          size: 25.0,
                                          color: AppColor.blueThemeColor,
                                        )),
                                    IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.delete,
                                          size: 25.0,
                                          color: Colors.red,
                                        )),
                                    Image.asset(
                                      'assets/whatsapp.png',
                                      height: 25.0,
                                      width: 25.0,
                                    )
                                  ],
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
          Positioned(
              bottom: 25.0,
              right: 0.0,
              child: Padding(
                padding: const EdgeInsets.only(right: 22.0, top: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        Get.toNamed(Routes.NEW_SALE);
                      },
                      backgroundColor: Colors.indigo[400],
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: AppColor.white,
                      ),
                    )
                  ],
                ),
              )),
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
             BottomNavigationBarItem(
                icon: GestureDetector(onTap: ()=>Get.toNamed(Routes.EXPORT),child: Icon(Icons.download),), label: 'Downloads'),
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
