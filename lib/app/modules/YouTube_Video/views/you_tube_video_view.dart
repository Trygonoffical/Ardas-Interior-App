import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:get/get.dart';

import '../controllers/you_tube_video_controller.dart';

class YouTubeVideoView extends GetView<YouTubeVideoController> {
  const YouTubeVideoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = Get.put(YoutubePlayerController(
      initialVideoId:
          'https://www.youtube.com/watch?v=7lfFZs50JHM&list=RDGMEM916WJxafRUGgOvd6dVJkeQVM7lfFZs50JHM&start_radio=1',
    ));
    return Scaffold(
      appBar: AppBar(
        title: const Text('YouTubeVideoView'),
        centerTitle: true,
      ),
      body: Center(
          // child: ListView.builder(
          //   shrinkWrap: true,
          //   itemCount: 4,
          //   scrollDirection: Axis.vertical,
          //   itemBuilder: ((context, index) {
          //     return YoutubePlayer(
          //       width: 100,
          //       aspectRatio: 3 / 2,
          //       controller: controller,
          //     );
          //   }),
          // ),
          ),
    );
  }
}
