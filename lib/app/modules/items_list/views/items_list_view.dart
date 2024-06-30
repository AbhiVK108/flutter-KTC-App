// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktc_app/app/core/app_config/app_colors.dart';
import 'package:ktc_app/app/core/app_config/app_utils.dart';
import 'package:ktc_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:ktc_app/app/routes/app_pages.dart';

import '../controllers/items_list_controller.dart';

// ignore: must_be_immutable
class ItemsListView extends GetView<DashboardController> {
  var items = [
    {"leading": "Item-1", "pen": "assets/pen.png", "bin": "assets/bin.png"},
    {"leading": "Item-2", "pen": "assets/pen.png", "bin": "assets/bin.png"},
    {"leading": "Item-3", "pen": "assets/pen.png", "bin": "assets/bin.png"},
  ];

  ItemsListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        centerTitle: true,
        title: Text(
          "Items List",
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
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 10.0,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text(
          //       "Items List",
          //       style: Theme.of(context).textTheme.headlineLarge?.copyWith(
          //           fontFamily: 'Montserrat',
          //           fontSize: 23.0,
          //           fontWeight: FontWeight.w800,
          //           fontStyle: FontStyle.italic),
          //     ),
          //   ],
          // ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            color: Colors.white,
            height: 660,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.indigo[50],
                    shadowColor: Colors.indigo[200],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            items[index]["leading"].toString(),
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
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.edit,
                                    size: 26,
                                    color: AppColor.blueThemeColor,
                                  )),
                              const SizedBox(
                                width: 2.0,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete,
                                    size: 26,
                                    color: Colors.red,
                                  )),
                            ],
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
                  onPressed: () {
                    Get.toNamed(Routes.NEW_ITEM);
                  
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
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
