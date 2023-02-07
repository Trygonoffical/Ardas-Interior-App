import 'package:get/get.dart';

import '../controllers/help_expention_controller.dart';

class HelpExpentionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HelpExpentionController>(
      () => HelpExpentionController(),
    );
  }
}
