import 'package:get/get.dart';

import '../controllers/rezor_pey_controller.dart';

class RezorPeyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RezorPeyController>(
      () => RezorPeyController(),
    );
  }
}
