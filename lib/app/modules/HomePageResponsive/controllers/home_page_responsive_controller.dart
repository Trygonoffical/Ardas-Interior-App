import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomePageResponsiveController extends GetxController {
  //TODO: Implement HomePageResponsiveController

  final count = 0.obs;
  final CarouselController carouselController = CarouselController();
  RxInt currentIndex = 0.obs;
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
