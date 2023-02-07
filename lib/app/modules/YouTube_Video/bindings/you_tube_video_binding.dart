import 'package:get/get.dart';

import '../controllers/you_tube_video_controller.dart';

class YouTubeVideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YouTubeVideoController>(
      () => YouTubeVideoController(),
    );
  }
}
