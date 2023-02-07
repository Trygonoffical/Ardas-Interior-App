import 'package:get/get.dart';

import '../controllers/product_clean_controller.dart';

class ProductCleanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductCleanController>(
      () => ProductCleanController(),
    );
  }
}
