import 'package:get/get.dart';

import '../controllers/home_page_responsive_controller.dart';

class HomePageResponsiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageResponsiveController>(
      () => HomePageResponsiveController(),
    );
  }
}
