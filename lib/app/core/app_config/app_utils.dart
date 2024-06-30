// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:ktc_app/app/routes/app_pages.dart';

class AppUtil {
  static bottomNavigator() {
    BottomNavigationBar(
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
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () => Get.toNamed(Routes.LOGIN),
                child: Icon(Icons.logout),
              ),
              label: 'Signout')
        ]);
  }

  static void showSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Search',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontFamily: 'Montserrat',
                fontSize: 19.0,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
                color: Colors.indigo[400]),
          ),
          content: Container(
            width: double.maxFinite,
            child: TextField(
              decoration: InputDecoration(
                  // suffixIcon: Icon(Icons.search),
                  hintText: 'Search...',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontFamily: 'Montserrat', fontSize: 15.0)),
              autofocus: true,
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red[400])),
              child: Text(
                'Cancel',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontFamily: 'Montserrat',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.indigo[400])),
              child: Text(
                'Search',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontFamily: 'Montserrat',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
              onPressed: () {
                // Perform search operation here
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
