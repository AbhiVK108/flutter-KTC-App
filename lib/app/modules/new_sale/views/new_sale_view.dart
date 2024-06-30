// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktc_app/app/core/app_config/app_colors.dart';
import 'package:ktc_app/app/core/app_config/app_sizes.dart';
import 'package:ktc_app/app/core/app_config/app_utils.dart';
import 'package:ktc_app/app/routes/app_pages.dart';

import '../controllers/new_sale_controller.dart';

class NewSaleView extends GetView<NewSaleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        centerTitle: true,
        title: Text(
          "New Sales",
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontFamily: 'Montserrat',
              fontSize: 23.0,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () => Get.toNamed(Routes.SALES),
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            )),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Serial Number',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Name',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Address',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: ' Mobile Number',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Particulars',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'IMEI Number',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Estimated Amount',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Advance Amount',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Balance Amount',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Description',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.indigo[400])),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text(
                          'Submit',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: AppColor.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Montserrat'),
                        ),
                      )),
                ],
              )
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
