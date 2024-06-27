// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktc_app/app/core/app_config/app_colors.dart';
import 'package:ktc_app/app/routes/app_pages.dart';
// import 'package:ktc_app/app/core/app_config/default_widgets.dart';

import '../controllers/customers_controller.dart';

// ignore: must_be_immutable
class CustomersView extends GetView<CustomersController> {
  var customersData = [
    {
      "leading": "Vijay",
      "title": "9963873607",
      "price": "300",
      "trailing": "assets/whatsapp.png"
    },
    {
      "leading": "Swamy",
      "title": "9490043228",
      "price": "700",
      "trailing": "assets/whatsapp.png"
    },
    {
      "leading": "Krishna",
      "title": "9849410172",
      "price": "250",
      "trailing": "assets/whatsapp.png"
    }
  ];

  CustomersView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        leading: IconButton(
            onPressed: () => Get.toNamed(Routes.DASHBOARD),
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Customers",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontFamily: 'Montserrat',
                      fontSize: 23.0,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Icon(
                  Icons.people,
                  size: 35,
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              color: Colors.white,
              height: 660,
              child: ListView.builder(
                itemCount: customersData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.indigo[50],
                      shadowColor: Colors.indigo[200],
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              customersData[index]["leading"].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(
                                      fontFamily: 'Montserrat',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.indigo),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              customersData[index]["title"].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(
                                      fontFamily: 'Montserrat',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.indigo),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              customersData[index]["price"].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(
                                      fontFamily: 'Montserrat',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.indigo),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Image.asset(
                              customersData[index]['trailing'].toString(),
                              height: 20,
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22.0, top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.indigo[400],
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: AppColor.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.indigo[400],
          selectedItemColor: Colors.purple[50],
          unselectedItemColor: Colors.white,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
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
