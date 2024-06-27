import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktc_app/app/core/app_config/app_colors.dart';
import 'package:ktc_app/app/core/app_config/app_sizes.dart';


import '../controllers/forget_pass_controller.dart';

class ForgetPassView extends GetView<ForgetPassController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.indigo[400],
      centerTitle: true,
      title: Text(
        'New Sale',
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontFamily: 'Montserrat',
            fontSize: 21.0,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.normal,
            color: AppColor.white),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 30,
              color: AppColor.white,
            )),
        const SizedBox(
          width: 15.0,
        )
      ],
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
