// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktc_app/app/core/app_config/app_colors.dart';
import 'package:ktc_app/app/core/app_config/app_sizes.dart';
import 'package:ktc_app/app/routes/app_pages.dart';

import '../controllers/forget_pass_controller.dart';

class ForgetPassView extends GetView<ForgetPassController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        centerTitle: true,
        title: Text(
          '',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontFamily: 'Montserrat',
              fontSize: 21.0,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.normal,
              color: AppColor.white),
        ),
        leading: IconButton(
            onPressed: () => Get.toNamed(Routes.LOGIN),
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
              Text(
                "Change Password",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontFamily: 'Montserrat',
                    fontSize: 23.0,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 19.0,
              ),
              Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: null,
                  obscureText: true,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      prefixIcon: Icon(Icons.remove_red_eye),
                      hintText: 'New Password',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              SizedBox(
                height: 19.0,
              ),

              // .......Update in button.........//
              TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.indigo[400])),
                  child: Padding(
                    padding: AppSizes.buttonHorizontal,
                    child: Text(
                      'Update',
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
    );
  }
}
