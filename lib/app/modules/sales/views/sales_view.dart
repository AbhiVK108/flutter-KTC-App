import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktc_app/app/routes/app_pages.dart';

import '../controllers/sales_controller.dart';

class SalesView extends GetView<SalesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[400],
          centerTitle: true,
          leading: IconButton(
              onPressed: () => Get.toNamed(Routes.DASHBOARD),
              icon: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              )),
        ),
        body: Column(
          children: [],
        ));
  }
}
