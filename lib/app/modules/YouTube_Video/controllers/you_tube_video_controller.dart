import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubeVideoController extends GetxController {
  static String videoUrl = 'PQSagzssvUQ';

  final count = 0.obs;
  @override
  void onInit() {
    final videoID = YoutubePlayer.convertUrlToId(videoUrl).obs;

    var _controller = YoutubePlayerController(
      initialVideoId: videoID.toString(),
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ).obs;
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
