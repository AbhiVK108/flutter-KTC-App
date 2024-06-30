import 'package:get/get.dart';

import '../controllers/monthly_controller.dart';

class MonthlyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MonthlyController>(
      () => MonthlyController(),
    );
  }
}
