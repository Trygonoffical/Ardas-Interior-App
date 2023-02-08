import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  //TODO: Implement HomeController
  final List<String> _ids =
      ['i0fkwgyhjkQ', 'xyOdS4eUkRQ', '1--qqQrimMA', 'E3SQOqUq8Mg'].obs;
  final count = 0.obs;
  late YoutubePlayerController _controller;
  void runYoutubePlayer() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(_ids[0])!,
        flags: YoutubePlayerFlags(
            enableCaption: false, isLive: false, autoPlay: false));
  }

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
