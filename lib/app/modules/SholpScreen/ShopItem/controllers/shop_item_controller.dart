import 'package:get/get.dart';

class ShopItemController extends GetxController {
  //TODO: Implement ShopItemController
  RxString dropdownvalue = 'Item 1'.obs;
  // void setSelected(String value) {
  //   dropdownvalue.value = value;
  // }

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  final count = 0.obs;
  final selected = "".obs;

//BookController bookcontroller = BookController();
  @override
  void onInit() {
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
