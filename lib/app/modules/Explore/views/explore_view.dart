import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../../Custom_widget/container_heigh.dart';
import '../controllers/explore_controller.dart';

class ExploreView extends GetView<ExploreController> {
  const ExploreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Color(0xFFEBEBEB),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      height: getMediaQueryHeight(context: context, value: 160),
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: getMediaQueryHeight(
                                context: context, value: 15),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, bottom: 5),
                            child: Text(
                              "Living",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Divider(
                            thickness: 4,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Card(
                                  child: Container(
                                    // height: getMediaQueryHeight(
                                    //     context: context, value: 85),
                                    width: getMediaQueryWidth(
                                        context: context, value: 160),

                                    //     MediaQuery.of(context).size.height * 0.11,
                                    // width: MediaQuery.of(context).size.width * 0.44,
                                    color: Color(0xFFDDD8D8),
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        radius: 21,
                                        child: Icon(FontAwesomeIcons.chair),
                                      ),
                                      title: Text(
                                        "Seating & Chairs",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      subtitle: Text(
                                        "1369 + Options",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Card(
                                  child: Container(
                                    // height: getMediaQueryHeight(
                                    //     context: context, value: 85),
                                    width: getMediaQueryWidth(
                                        context: context, value: 160),
                                    color: Color(0xFFDDD8D8),
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        radius: 21,
                                        child: Icon(FontAwesomeIcons.chair),
                                      ),
                                      title: Text(
                                        "Seating & Chairs",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      subtitle: Text(
                                        "1369 + Options",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getMediaQueryHeight(
                                context: context, value: 10),
                          )
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
    );
  }
}
