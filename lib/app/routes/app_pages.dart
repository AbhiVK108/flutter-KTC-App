import 'package:get/get.dart';

import 'package:ktc_app/app/modules/customers/bindings/customers_binding.dart';
import 'package:ktc_app/app/modules/customers/views/customers_view.dart';
import 'package:ktc_app/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:ktc_app/app/modules/dashboard/views/dashboard_view.dart';
import 'package:ktc_app/app/modules/forget_pass/bindings/forget_pass_binding.dart';
import 'package:ktc_app/app/modules/forget_pass/views/forget_pass_view.dart';
import 'package:ktc_app/app/modules/home/bindings/home_binding.dart';
import 'package:ktc_app/app/modules/home/views/home_view.dart';
import 'package:ktc_app/app/modules/items_list/bindings/items_list_binding.dart';
import 'package:ktc_app/app/modules/items_list/views/items_list_view.dart';
import 'package:ktc_app/app/modules/login/bindings/login_binding.dart';
import 'package:ktc_app/app/modules/login/views/login_view.dart';
import 'package:ktc_app/app/modules/new_item/bindings/new_item_binding.dart';
import 'package:ktc_app/app/modules/new_item/views/new_item_view.dart';
import 'package:ktc_app/app/modules/sales/bindings/sales_binding.dart';
import 'package:ktc_app/app/modules/sales/views/sales_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SALES;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASS,
      page: () => ForgetPassView(),
      binding: ForgetPassBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMERS,
      page: () => CustomersView(),
      binding: CustomersBinding(),
    ),
    GetPage(
      name: _Paths.ITEMS_LIST,
      page: () => ItemsListView(),
      binding: ItemsListBinding(),
    ),
    GetPage(
      name: _Paths.NEW_ITEM,
      page: () => NewItemView(),
      binding: NewItemBinding(),
    ),
    GetPage(
      name: _Paths.SALES,
      page: () => SalesView(),
      binding: SalesBinding(),
    ),
  ];
}
