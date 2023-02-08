import 'dart:async';
import 'package:get_cli/Custom_widget/container_heigh.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_cli/app/modules/mainScreen/views/main_screen_view.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends StatefulWidget {
  SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  late Timer _timer;
  @override
  void initState() {
    _timer = Timer(Duration(seconds: 5), () async {
      await Get.off(MainScreenView());
    });

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //  crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Image.asset(
                'assets/ardasicon.jpg',
                height: getMediaQueryHeight(context: context, value: 50),
              ),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/ardaslogo.jpg',
              height: getMediaQueryHeight(context: context, value: 50),
            ),
          ),
          Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.black,
              // leftDotColor: const Color(0xFF1A1A3F),
              // rightDotColor: const Color(0xFFEA3799),
              size: 80,
            ),
          ),
          // Text('Ardas Interior'.toUpperCase(),
          //     style: TextStyle(fontSize: 30, fontFamily: 'roboto-bold')),
          // Expanded(
          //     child: Center(
          //   child: CircularProgressIndicator(
          //     color: Colors.black,
          //   ),
          // )),
        ],
      ),
    );
  }
}
