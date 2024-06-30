import 'package:get/get.dart';

import '../controllers/yearly_controller.dart';

class YearlyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YearlyController>(
      () => YearlyController(),
    );
  }
}
