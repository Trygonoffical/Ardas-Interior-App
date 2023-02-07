import 'package:get/get.dart';

class FilterPageController extends GetxController {
  final count = 0.obs;
  late RxInt selectedRadio;
  setSelectedRadio(String? val) {
    selectedRadio = val as RxInt;
  }

  @override
  void onInit() {
    RxInt selectedRadio = 0.obs;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
