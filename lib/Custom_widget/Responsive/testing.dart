import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get_cli/Custom_widget/Responsive/appResponsive.dart';

import '../../Model/model.dart';
import '../container_heigh.dart';

class TestingLayout extends StatefulWidget {
  const TestingLayout({Key? key}) : super(key: key);

  @override
  State<TestingLayout> createState() => _TestingLayoutState();
}

class _TestingLayoutState extends State<TestingLayout> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: Container(
          color: Colors.black,
          child: InkWell(
            onTap: (() {
              print(currentIndex);
            }),
            child: CarouselSlider(
              items: product
                  .map((item) => Image.asset(
                        item['assets'].toString(),
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ))
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                  height: getMediaQueryHeight(context: context, value: 350),
                  scrollPhysics: BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
            ),
          ),
        ),
        tablet: Container(
          color: Colors.green,
          child: InkWell(
            onTap: (() {
              print(currentIndex);
            }),
            child: CarouselSlider(
              items: product
                  .map((item) => Image.asset(
                        item['assets'].toString(),
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ))
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                  height: getMediaQueryHeight(context: context, value: 500),
                  scrollPhysics: BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
