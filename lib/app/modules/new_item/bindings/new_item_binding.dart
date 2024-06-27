import 'package:get/get.dart';

import '../controllers/new_item_controller.dart';

class NewItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewItemController>(
      () => NewItemController(),
    );
  }
}
