// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktc_app/app/core/app_config/app_colors.dart';
import 'package:ktc_app/app/core/app_config/app_sizes.dart';
import 'package:ktc_app/app/core/app_config/app_utils.dart';
import 'package:ktc_app/app/routes/app_pages.dart';

import '../controllers/new_item_controller.dart';

class NewItemView extends GetView<NewItemController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Get.toNamed(Routes.ITEMS_LIST),
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            )),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Item Name',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),

              // .......Sign in button.........//
              TextButton(
                  onPressed: () => Get.toNamed(Routes.DASHBOARD),
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.indigo[400])),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      'Submit',
                      // style: TextStyle(color: AppColors.white),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColor.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Montserrat'),
                    ),
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
