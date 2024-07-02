import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ktc_app/app/core/app_config/app_colors.dart';
import 'package:ktc_app/app/core/app_config/app_sizes.dart';
import 'package:ktc_app/app/core/app_config/app_utils.dart';
import 'package:ktc_app/app/routes/app_pages.dart';

import '../controllers/export_controller.dart';

// ignore: must_be_immutable
class ExportView extends GetView<ExportController> {
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();

  ExportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        centerTitle: true,
        title: Text(
          "Export",
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 15.0,
            ),
            Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: startDateController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.date_range),
                      hintText: 'Start Date',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2200));

                    if (pickedDate != null) {
                      var formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      startDateController.text = formattedDate;
                    }
                  },
                )),
            SizedBox(
              height: 15.0,
            ),
            Padding(
                padding: AppSizes.pageHorizontal,
                child: TextField(
                  controller: endDateController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.date_range),
                      hintText: 'End Date',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2200));

                    if (pickedDate != null) {
                      var formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      endDateController.text = formattedDate;
                    }
                  },
                )),
            SizedBox(
              height: 18.0,
            ),
            TextButton(
                onPressed: () => Get.toNamed(Routes.DASHBOARD),
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Colors.indigo[400])),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'Export',
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
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () => Get.toNamed(Routes.EXPORT),
                  child: Icon(Icons.download),
                ),
                label: 'Downloads'),
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
