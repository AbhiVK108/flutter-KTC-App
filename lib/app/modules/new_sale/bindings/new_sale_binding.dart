import 'package:get/get.dart';

import '../controllers/new_sale_controller.dart';

class NewSaleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewSaleController>(
      () => NewSaleController(),
    );
  }
}
