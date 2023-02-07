import 'package:get/get.dart';

import '../controllers/sholp_screen_controller.dart';

class SholpScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SholpScreenController>(
      () => SholpScreenController(),
    );
  }
}
