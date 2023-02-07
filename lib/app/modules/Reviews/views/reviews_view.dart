import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_cli/Custom_widget/container_heigh.dart';

import '../controllers/reviews_controller.dart';

class ReviewsView extends GetView<ReviewsController> {
  const ReviewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBEBEB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: getMediaQueryHeight(context: context, value: 10),
                  );
                },
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        child: Container(
                          color: Colors.white,
                          // height:
                          //     getMediaQueryHeight(context: context, value: 570),
                          // color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Card(
                                  child: Container(
                                    // height: getMediaQueryHeight(
                                    //     context: context, value: 250),
                                    color: Color(0xFFEBEBEB),
                                    child: Image(
                                      image: AssetImage("assets/banner.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Container(
                                    //  height: 250,
                                    color: Color(0xFFEBEBEB),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: getMediaQueryHeight(
                                                context: context, value: 5),
                                          ),
                                          ListTile(
                                            leading: CircleAvatar(
                                              radius: 30,
                                              child: Text(
                                                "Ravi",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              backgroundColor: Colors.white,
                                            ),
                                            title: Text(
                                              "Ravi Patel",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            subtitle: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "on Its amazing product and usefull ")
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: getMediaQueryHeight(
                                                context: context, value: 5),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              height: getMediaQueryHeight(
                                                  context: context, value: 80),
                                              width: getMediaQueryWidth(
                                                  context: context, value: 260),
                                              child: Text(
                                                  maxLines: 4,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  "Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase."),
                                            ),
                                          ),
                                          SizedBox(
                                            height: getMediaQueryHeight(
                                                context: context, value: 15),
                                          ),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Text("VIEW PRODUCT"))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
