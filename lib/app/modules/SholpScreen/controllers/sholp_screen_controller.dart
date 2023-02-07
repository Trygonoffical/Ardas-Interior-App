import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class SholpScreenController extends GetxController {
  //TODO: Implement SholpScreenController
  final CarouselController carouselController = CarouselController();
  final count = 0.obs;
  //  var carouselController;
  RxInt currentIndex = 0.obs;

  RxBool descTextShowFlag = false.obs;
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
