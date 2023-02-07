import 'package:get/get.dart';

import '../controllers/adress_enter_page_controller.dart';

class AdressEnterPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdressEnterPageController>(
      () => AdressEnterPageController(),
    );
  }
}
