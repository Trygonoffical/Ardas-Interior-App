import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:get_cli/Custom_widget/container_heigh.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogsView extends StatefulWidget {
  BlogsView({Key? key}) : super(key: key);

  @override
  State<BlogsView> createState() => _BlogsViewState();
}

class _BlogsViewState extends State<BlogsView> {
  bool isLoader = false;
  int likecounter = 111;
  String phoneNumber = '9310140032';
  String description = "your-custom-message";
  void _contactViaWhatsApp(context) async {
    String whatsAppUrl = "whatsapp://send?phone=$phoneNumber";

    if (Platform.isIOS) {
      whatsAppUrl =
          'whatsapp://wa.me/$phoneNumber/?text=${Uri.parse(description)}';
    } else {
      whatsAppUrl =
          'https://wa.me/+$phoneNumber?text=${Uri.parse(description)}';
    }

    if (await canLaunch(whatsAppUrl)) {
      await launch(whatsAppUrl);
    } else {
      final snackBar = SnackBar(
        content: Text("Install WhatsApp First Please"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoader
          ? Center(child: CircularProgressIndicator(color: Colors.black))
          : Scaffold(
              backgroundColor: Color(0xFFEBEBEB),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      separatorBuilder: (BuildContext, index) => SizedBox(
                        height: getMediaQueryHeight(context: context, value: 8),
                      ),
                      itemBuilder: (BuildContext, index) {
                        return Card(
                          child: Container(
                            //  height: getMediaQueryHeight(context: context, value: 540),
                            width: double.infinity,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: NetworkImage(
                                        "https://www.ulcdn.net/opt/600x/www.ulcdn.net/media/users/139853/inspirations/original/096c1e198e.png?1670865408"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Make The Most Of Nooks And Crannies",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(DateFormat('dd-MM-yyyy')
                                      .format(DateTime.now())),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "MYou might need to create lists that display different types of content. For example, you might be working on a list that shows a heading followed by a few items related to the heading, followed by another heading, and so on.",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                    maxLines: 3,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Read More..",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blue),
                                  ),
                                ),
                                Divider(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: getMediaQueryWidth(
                                          context: context, value: 8),
                                    ),
                                    LikeButton(
                                      likeCount: likecounter,
                                      likeBuilder: (isTapped) {
                                        return Icon(
                                          FontAwesomeIcons.solidHeart,
                                          color: isTapped
                                              ? Colors.redAccent
                                              : Colors.black,
                                        );
                                      },
                                    ),
                                    // LikeButton(
                                    //   onTap: (isLicked) async {
                                    //     this.isLicked = !isLicked;
                                    //     likeCount += this.isLicked ? 1 : -1;
                                    //     return isLicked;
                                    //   },
                                    //   size: 30,
                                    //   isLiked: isLicked,
                                    //   likeCount: likeCount,
                                    // ),

                                    // Padding(
                                    //   padding: const EdgeInsets.only(top: 5),
                                    //   child: Text(likecounter.toString()),
                                    // ),
                                    SizedBox(
                                        width: getMediaQueryWidth(
                                            context: context, value: 150)
                                        // width: MediaQuery.of(context).size.width * 0.38,
                                        ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            child:
                                                Icon(FontAwesomeIcons.whatsapp),
                                            onTap: () {
                                              _contactViaWhatsApp(context);
                                              // Get.to(YouTubeVideoView());
                                            },
                                          ),
                                          SizedBox(
                                            width: getMediaQueryWidth(
                                                context: context, value: 20),
                                          ),
                                          Icon(FontAwesomeIcons.facebook),
                                          SizedBox(
                                            width: getMediaQueryWidth(
                                                context: context, value: 20),
                                          ),
                                          Icon(FontAwesomeIcons.share),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: getMediaQueryHeight(
                                      context: context, value: 10),
                                )
                              ],
                            ),
                          ),
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
