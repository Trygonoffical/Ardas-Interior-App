import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../Custom_widget/container_heigh.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(title: Text("Notification Center")),
      body: ListView.separated(
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => SizedBox(
          height: getMediaQueryHeight(context: context, value: 5),
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child: Container(
                    height: getMediaQueryHeight(context: context, value: 440),
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: getMediaQueryHeight(
                                context: context, value: 300),
                            child: Image(
                              image: NetworkImage(
                                "https://www.ulcdn.net/opt/600x/www.ulcdn.net/media/users/139853/inspirations/original/096c1e198e.png?1670865408",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "This season of cozy, warm up your home with our comfy essentials made to relax and snuggle"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            DateFormat('dd-MM-yyyy').format(DateTime.now()),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
