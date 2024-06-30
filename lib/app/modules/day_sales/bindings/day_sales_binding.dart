import 'package:get/get.dart';

import '../controllers/day_sales_controller.dart';

class DaySalesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DaySalesController>(
      () => DaySalesController(),
    );
  }
}
