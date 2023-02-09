import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:get_cli/Custom_widget/Responsive/appResponsive.dart';
import 'package:intl/intl.dart';

import '../../../../Custom_widget/Responsive/testing.dart';
import '../../../../Custom_widget/container_heigh.dart';
import '../../../../Model/model.dart';
import '../../Product_clean/views/product_clean_view.dart';
import '../../Product_details/views/product_details_view.dart';
import '../controllers/home_page_responsive_controller.dart';

class HomePageResponsiveView extends StatefulWidget {
  const HomePageResponsiveView({Key? key}) : super(key: key);

  @override
  State<HomePageResponsiveView> createState() => _HomePageResponsiveViewState();
}

class _HomePageResponsiveViewState extends State<HomePageResponsiveView> {
  HomePageResponsiveController homePageResponsiveController =
      Get.put(HomePageResponsiveController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Responsive(
            mobile: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSlider(
                    items: [
                      //1st Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/Slidshow.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                      //2nd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/Slideshow2.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                      //3rd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/Slideshow3.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                      //4th Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/Slideshow4.jpg"),
                            // image: AssetsImage(
                            //     "assets/Slideshow4.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 200.0,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.995,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/adds.jpg",
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: GestureDetector(
                          child: Text(
                            "Recently Viewed",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomePageScreen()));
                          },
                        ),
                      ),
                      height: getMediaQueryHeight(context: context, value: 40),
                      // MediaQuery.of(context).size.height * 0.045,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: SizedBox(
                      height: getMediaQueryHeight(context: context, value: 220),
                      // height: MediaQuery.of(context).size.height * 0.29,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 5,
                          );
                        },
                        itemCount: product.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () => Get.to(ProductCleanView()),
                            //     getDataDetails(product[index], context),
                            child: Card(
                              elevation: 2,
                              child: Container(
                                width: getMediaQueryWidth(
                                    context: context, value: 160),
                                //  width: MediaQuery.of(context).size.width * 0.38,
                                //height: 30.5.h
                                //   width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(9)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // SizedBox(
                                    //   height: 10,
                                    // ),
                                    Container(
                                        height: getMediaQueryHeight(
                                            context: context, value: 150),
                                        width: getMediaQueryWidth(
                                            context: context,
                                            value: double.infinity),
                                        // height:
                                        //     MediaQuery.of(context).size.height * 0.17,
                                        child: Image.asset(
                                          product[index]["assets"].toString(),
                                          //  _resultList[index].avatar,
                                          fit: BoxFit.cover,
                                        )
                                        // Image.network(
                                        //   coinList[index].imageUrl.toString(),
                                        // ),
                                        ),
                                    SizedBox(
                                      height: getMediaQueryHeight(
                                          context: context, value: 5),
                                    ),
                                    Center(
                                        child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Text(
                                        product[index]["price"].toString(),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,

                                        //"Thiene Sofa (Cream Italian Leather)",
                                        style: TextStyle(fontSize: 12),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Text(
                                          NumberFormat.simpleCurrency(
                                                  locale: 'hi-IN',
                                                  decimalDigits: 0)
                                              .format(product[index]["score"])
                                              .toString(),
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey,
                                              fontSize: 10),
                                        ),
                                        SizedBox(
                                            width: getMediaQueryWidth(
                                                context: context, value: 5)
                                            //6,
                                            ),
                                        Expanded(
                                          child: Text(
                                            NumberFormat.simpleCurrency(
                                                    locale: 'hi-IN',
                                                    decimalDigits: 0)
                                                .format(292950)
                                                .toString(),
                                            style: TextStyle(
                                                color: Color(0xFF2196F3),
                                                fontSize: 10),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: getMediaQueryHeight(
                                          context: context, value: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: getMediaQueryHeight(context: context, value: 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/adds2.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    color: Colors.blueGrey,
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Text(
                          "Shop By Department ",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: SizedBox(
                            height: getMediaQueryHeight(
                                context: context, value: 120),
                            child: ListView.separated(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: ((context, index) {
                                  return Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(ProductDetailsView());
                                        },
                                        child: Card(
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: Image(
                                              image: AssetImage(shopItem[index]
                                                      ["materialpic"]
                                                  .toString()),
                                              fit: BoxFit.cover,
                                            ),
                                            radius: 40,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        shopItem[index]["materialname"]
                                            .toString(),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  );
                                }),
                                separatorBuilder: (BuildContext, index) {
                                  return SizedBox(
                                    width: 15,
                                  );
                                },
                                itemCount: shopItem.length),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: GestureDetector(
                          child: Text(
                            "Inspirations From Our Blog",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomePageScreen()));
                          },
                        ),
                      ),
                      height: getMediaQueryHeight(context: context, value: 30),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 320,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Stack(children: [
                            SizedBox(
                              width: getMediaQueryWidth(
                                  context: context, value: 360),
                              // 360,
                              height: getMediaQueryHeight(
                                  context: context, value: 450),
                              //500,
                              child: Image.asset(
                                "assets/blog1.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              top: 230,
                              left: 20,
                              child: SizedBox(
                                width: 250,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      // softWrap: false,
                                      //  overflow: TextOverflow.ellipsis,
                                      "How to Declutter Your House Based on Your Personality Type?",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text("read more...",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            )))
                                  ],
                                ),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 15,
                          ),
                          Stack(children: [
                            SizedBox(
                              // width: 360,
                              // height: 500,
                              child: Image.asset(
                                "assets/blog2.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              top: 230,
                              left: 20,
                              child: SizedBox(
                                width: 250,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      // softWrap: false,
                                      //  overflow: TextOverflow.ellipsis,
                                      "5 Elegant Ideas for Your Dreamy Modern Master Bedroom",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text("read more...",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            )))
                                  ],
                                ),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 15,
                          ),
                          Stack(children: [
                            SizedBox(
                              width: getMediaQueryWidth(
                                  context: context, value: 360),
                              height: getMediaQueryHeight(
                                  context: context, value: 500),
                              // width: 360,
                              // height: 500,
                              child: Image.asset(
                                "assets/blog3.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              top: 230,
                              left: 20,
                              child: SizedBox(
                                width: getMediaQueryWidth(
                                    context: context, value: 250),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      // softWrap: false,
                                      //  overflow: TextOverflow.ellipsis,
                                      "7 Decor Ideas to Spruce up Your Hallway",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text("read more...",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            )))
                                  ],
                                ),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 15,
                          ),
                          Stack(children: [
                            SizedBox(
                              width: getMediaQueryWidth(
                                  context: context, value: 360),
                              //width: 360,
                              child: Image.asset(
                                "assets/blolg4.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              top: 230,
                              left: 20,
                              child: SizedBox(
                                width: getMediaQueryWidth(
                                    context: context, value: 250),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,

                                      //  overflow: TextOverflow.ellipsis,
                                      "8 Trends You Can Use This Holiday Season in Your Home",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) =>
                                          //             YouTube_Videol()));
                                        },
                                        child: Text("read more...",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ))),
                                  ],
                                ),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: GestureDetector(
                          child: Text(
                            "Need Help Buying?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomePageScreen()));
                          },
                        ),
                      ),
                      height: getMediaQueryHeight(context: context, value: 30),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: getMediaQueryHeight(context: context, value: 180),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/blog1.jpg",
                              height: getMediaQueryHeight(
                                  context: context, value: 120),
                              fit: BoxFit.fill,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Sofas",
                                  style: TextStyle(
                                    color: Colors.black,
                                  )),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/blog2.jpg",
                              height: getMediaQueryHeight(
                                  context: context, value: 120),
                              fit: BoxFit.fill,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Beds",
                                  style: TextStyle(
                                    color: Colors.black,
                                  )),
                            )
                          ],
                        ),
                        // Column(
                        //   children: [
                        //     Image.asset(
                        //       "assets/blolg4.jpg",
                        //       height: 110,
                        //       fit: BoxFit.fill,
                        //     ),
                        //     Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Text("Mattresses",
                        //           style: TextStyle(
                        //             color: Colors.black,
                        //           )),
                        //     )
                        //   ],
                        // ),
                        Column(
                          children: [
                            Container(
                              height: getMediaQueryHeight(
                                  context: context, value: 125),
                              width: getMediaQueryWidth(
                                  context: context, value: 89),
                              //  26.w,
                              color: Color(0xff968677),
                              child: Image.network(
                                "https://ii3.pepperfry.com/media/wysiwyg/banners/hp_need_help_p_6.jpg",
                                fit: BoxFit.cover,
                                height: getMediaQueryHeight(
                                    context: context, value: 120),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Call Now"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  // Divider(),
                  // 2nd Slider
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: GestureDetector(
                          child: Text(
                            "Trends In Furniture And Decor",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomePageScreen()));
                          },
                        ),
                      ),
                      height: getMediaQueryHeight(context: context, value: 30),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: SizedBox(
                      height: getMediaQueryHeight(context: context, value: 260),
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: product.length,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: ((context, index) =>
                            SizedBox(width: 0)),
                        itemBuilder: ((context, index) {
                          return Card(
                            child: Column(
                              children: [
                                Container(
                                  color: Colors.black,
                                  //   width: 185,
                                  width: getMediaQueryWidth(
                                      context: context, value: 185),
                                  child: Image.asset(
                                    product[index]["assets"].toString(),
                                    fit: BoxFit.fill,
                                    height: getMediaQueryHeight(
                                        context: context, value: 200),
                                    //  height: 150,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    product[index]["price"].toString(),
                                    textAlign: TextAlign.center,
                                    // overflow: TextOverflow.ellipsis,
                                    //_resultList[index].firstName,

                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),

                  //........................YouTube.............................
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 8.0, right: 8),
                  //   child: SizedBox(
                  //     height: getMediaQueryHeight(context: context, value: 290),
                  //     child: ListView.separated(
                  //       physics: AlwaysScrollableScrollPhysics(),
                  //       shrinkWrap: true,
                  //       itemCount: 4,
                  //       scrollDirection: Axis.horizontal,
                  //       separatorBuilder: ((context, index) => SizedBox(width: 0)),
                  //       itemBuilder: ((context, index) {
                  //         return Card(
                  //           child: Container(
                  //             color: Colors.black,
                  //             height: 100,
                  //             //   width: 185,
                  //             width:
                  //                 getMediaQueryWidth(context: context, value: 185),
                  //             child: YoutubePlayer(controller:_,)
                  //             // YoutubePlayer(
                  //             //   aspectRatio: 2 / 3,
                  //             //   controller: YoutubePlayerController(
                  //             //       initialVideoId: YoutubePlayer.convertUrlToId(
                  //             //               "https://www.youtube.com/watch?v=qkkO4Fzkd-Q")
                  //             //           .toString(),
                  //             //       flags: YoutubePlayerFlags(
                  //             //         autoPlay: false,
                  //             //         useHybridComposition: false,
                  //             //         disableDragSeek: false,
                  //             //       ),
                  //             //       ),
                  //             // ),
                  //           ),
                  //         );
                  //       }),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 8,
                  ),
                  // Divider(),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(TestingLayout());
                      },
                      child: Container(
                          // height: getMediaQueryHeight(
                          //     context: context, value: 100),
                          width: getMediaQueryWidth(
                              context: context, value: double.infinity),
                          decoration: BoxDecoration(
                            color: Color(0xFFF7F2C8),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Image(
                            image: AssetImage("assets/bannernew.jpg"),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),

                  // 2nd Slider
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: GestureDetector(
                          child: Text(
                            "Inspire and Get Inspired",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomePageScreen()));
                          },
                        ),
                      ),
                      // height: 30,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Container(
                      height: getMediaQueryHeight(context: context, value: 260),
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: product.length,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: ((context, index) =>
                            SizedBox(width: 0)),
                        itemBuilder: ((context, index) {
                          return Card(
                            child: Column(
                              children: [
                                Container(
                                  color: Colors.black,
                                  width: getMediaQueryWidth(
                                      context: context, value: 185),
                                  child: Image.asset(
                                    product[index]["info"].toString(),
                                    fit: BoxFit.fill,
                                    height: getMediaQueryHeight(
                                        context: context, value: 200),
                                    //  height: 150,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    product[index]["price"].toString(),
                                    textAlign: TextAlign.center,
                                    // overflow: TextOverflow.ellipsis,
                                    //_resultList[index].firstName,

                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: getMediaQueryHeight(context: context, value: 40),
                  ),
                  Center(
                    child: Text(
                      "Live what you see? You'll like us even more here",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: getMediaQueryHeight(context: context, value: 25),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Color(0xff334C8C),
                        child: Icon(FontAwesomeIcons.facebook),
                      ),
                      SizedBox(
                        width: getMediaQueryWidth(context: context, value: 18),
                        // width: 18,
                      ),
                      GestureDetector(
                        onTap: () {
                          //Get.to(ProductCleanView());
                        },
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Color(0xff00A6DE),
                          child: Icon(FontAwesomeIcons.twitter),
                        ),
                      ),
                      SizedBox(
                        width: getMediaQueryWidth(context: context, value: 18),
                      ),
                      GestureDetector(
                        onTap: () {
                          //   Get.to(ProductCleanView());
                        },
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Color(0xffBC1B7B),
                          child: Icon(FontAwesomeIcons.instagram),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: getMediaQueryHeight(context: context, value: 50),
                  ),
                ],
              ),
            ),
            tablet: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Sized(),
                    Container(
                      decoration: BoxDecoration(),
                      child: InkWell(
                        onTap: (() {
                          print(
                              homePageResponsiveController.currentIndex.value);
                        }),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(9),
                          child: CarouselSlider(
                            items: product
                                .map((item) => Image.asset(
                                      item['assets'].toString(),
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ))
                                .toList(),
                            carouselController:
                                homePageResponsiveController.carouselController,
                            options: CarouselOptions(
                                height: getMediaQueryHeight(
                                    context: context, value: 450),
                                scrollPhysics: BouncingScrollPhysics(),
                                autoPlay: true,
                                aspectRatio: 16 / 9,
                                //  aspectRatio: 2,
                                viewportFraction: 1,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    homePageResponsiveController
                                        .currentIndex.value = index;
                                  });
                                }),
                          ),
                        ),
                      ),
                    ),
                    Sized(),
                    ClipRRect(
                      child: Image.asset(
                        "assets/adds.jpg",
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    Sized(),
                    Container(
                      child: GestureDetector(
                        child: Text(
                          "Recently Viewed",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {},
                      ),
                      height: getMediaQueryHeight(context: context, value: 60),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Sized(),
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 420),
                      // height: MediaQuery.of(context).size.height * 0.29,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 5,
                          );
                        },
                        itemCount: product.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () => Get.to(ProductCleanView()),
                            //     getDataDetails(product[index], context),
                            child: Card(
                              elevation: 2,
                              child: Container(
                                width: getMediaQueryWidth(
                                    context: context, value: 160),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(9)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // SizedBox(
                                    //   height: 10,
                                    // ),
                                    SizedBox(
                                        height: getMediaQueryHeight(
                                            context: context, value: 250),
                                        width: getMediaQueryWidth(
                                            context: context,
                                            value: double.infinity),
                                        // height:
                                        //     MediaQuery.of(context).size.height * 0.17,
                                        child: Image.asset(
                                          product[index]["assets"].toString(),
                                          //  _resultList[index].avatar,
                                          fit: BoxFit.cover,
                                        )
                                        // Image.network(
                                        //   coinList[index].imageUrl.toString(),
                                        // ),
                                        ),
                                    SizedBox(
                                      height: getMediaQueryHeight(
                                          context: context, value: 5),
                                    ),
                                    Center(
                                        child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Text(
                                        product[index]["price"].toString(),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,

                                        //"Thiene Sofa (Cream Italian Leather)",
                                        style: TextStyle(fontSize: 18),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                    SizedBox(
                                      height: getMediaQueryHeight(
                                          context: context, value: 5),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Text(
                                            NumberFormat.simpleCurrency(
                                                    locale: 'hi-IN',
                                                    decimalDigits: 0)
                                                .format(product[index]["score"])
                                                .toString(),
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Colors.grey,
                                                fontSize: 16),
                                          ),
                                        ),
                                        SizedBox(
                                            width: getMediaQueryWidth(
                                                context: context, value: 5)
                                            //6,
                                            ),
                                        Text(
                                          NumberFormat.simpleCurrency(
                                                  locale: 'hi-IN',
                                                  decimalDigits: 0)
                                              .format(292950)
                                              .toString(),
                                          style: TextStyle(
                                              color: Color(0xFF2196F3),
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: getMediaQueryHeight(
                                          context: context, value: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Sized(),
                    Image.asset(
                      "assets/adds2.jpg",
                      fit: BoxFit.cover,
                    ),
                    Sized(),
                    Container(
                      color: Colors.blueGrey,
                      child: Column(
                        children: [
                          SizedBox(
                              height: getMediaQueryHeight(
                                  context: context, value: 5)),
                          Text(
                            "Shop By Department ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SizedBox(
                              height: getMediaQueryHeight(
                                  context: context, value: 350),
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: ((context, index) {
                                    return Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(ProductDetailsView());
                                          },
                                          child: Card(
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              child: Image(
                                                image: AssetImage(
                                                    shopItem[index]
                                                            ["materialpic"]
                                                        .toString()),
                                                fit: BoxFit.cover,
                                              ),
                                              radius: 70,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          shopItem[index]["materialname"]
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ],
                                    );
                                  }),
                                  separatorBuilder: (BuildContext, index) {
                                    return SizedBox(
                                      width: 15,
                                    );
                                  },
                                  itemCount: shopItem.length),
                            ),
                          ),
                          Sized(),
                          Container(
                            child: GestureDetector(
                              child: Text(
                                "Inspirations From Our Blog",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              onTap: () {},
                            ),
                            height: getMediaQueryHeight(
                                context: context, value: 60),
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ],
                      ),
                    ),
                    Sized(),
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 600),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Stack(children: [
                            SizedBox(
                              width: getMediaQueryWidth(
                                  context: context, value: 400),
                              // 360,
                              height: getMediaQueryHeight(
                                  context: context, value: 600),
                              //500,
                              child: Image.asset(
                                "assets/blog1.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 180,
                              left: 20,
                              child: SizedBox(
                                width: getMediaQueryWidth(
                                    context: context, value: 300),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      // softWrap: false,
                                      //  overflow: TextOverflow.ellipsis,
                                      "How to Declutter Your House Based on Your Personality Type?",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text("read more...",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.blue,
                                            )))
                                  ],
                                ),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: getMediaQueryHeight(
                                context: context, value: 15),
                          ),
                          Stack(children: [
                            SizedBox(
                              // width: 360,
                              // height: 500,
                              child: Image.asset(
                                "assets/blog2.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              top: 230,
                              left: 20,
                              child: SizedBox(
                                width: getMediaQueryWidth(
                                    context: context, value: 250),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      // softWrap: false,
                                      //  overflow: TextOverflow.ellipsis,
                                      "5 Elegant Ideas for Your Dreamy Modern Master Bedroom",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text("read more...",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            )))
                                  ],
                                ),
                              ),
                            )
                          ]),
                          SizedBox(
                            width:
                                getMediaQueryWidth(context: context, value: 15),
                          ),
                          Stack(children: [
                            SizedBox(
                              width: getMediaQueryWidth(
                                  context: context, value: 360),
                              height: getMediaQueryHeight(
                                  context: context, value: 500),
                              // width: 360,
                              // height: 500,
                              child: Image.asset(
                                "assets/blog3.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 230,
                              left: 20,
                              child: SizedBox(
                                width: getMediaQueryWidth(
                                    context: context, value: 250),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      // softWrap: false,
                                      //  overflow: TextOverflow.ellipsis,
                                      "7 Decor Ideas to Spruce up Your Hallway",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text("read more...",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            )))
                                  ],
                                ),
                              ),
                            )
                          ]),
                          SizedBox(
                            width:
                                getMediaQueryWidth(context: context, value: 15),
                          ),
                          Stack(children: [
                            SizedBox(
                              width: getMediaQueryWidth(
                                  context: context, value: 360),
                              //width: 360,
                              child: Image.asset(
                                "assets/blolg4.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              top: 230,
                              left: 20,
                              child: SizedBox(
                                width: getMediaQueryWidth(
                                    context: context, value: 250),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,

                                      //  overflow: TextOverflow.ellipsis,
                                      "8 Trends You Can Use This Holiday Season in Your Home",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) =>
                                          //             YouTube_Videol()));
                                        },
                                        child: Text("read more...",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ))),
                                  ],
                                ),
                              ),
                            )
                          ]),
                          Sized(),
                        ],
                      ),
                    ),
                    Sized(),
                    Container(
                      child: GestureDetector(
                        child: Text(
                          "Need Help Buying?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {},
                      ),
                      height: getMediaQueryHeight(context: context, value: 60),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Sized(),
                    Container(
                      color: Colors.white,
                      height: getMediaQueryHeight(context: context, value: 400),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/blog1.jpg",
                                height: getMediaQueryHeight(
                                    context: context, value: 320),
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Sofas",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    )),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/blog2.jpg",
                                height: getMediaQueryHeight(
                                    context: context, value: 320),
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Beds",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    )),
                              )
                            ],
                          ),
                          // Column(
                          //   children: [
                          //     Image.asset(
                          //       "assets/blolg4.jpg",
                          //       height: 110,
                          //       fit: BoxFit.fill,
                          //     ),
                          //     Padding(
                          //       padding: const EdgeInsets.all(8.0),
                          //       child: Text("Mattresses",
                          //           style: TextStyle(
                          //             color: Colors.black,
                          //           )),
                          //     )
                          //   ],
                          // ),
                          Column(
                            children: [
                              Container(
                                height: getMediaQueryHeight(
                                    context: context, value: 320),
                                width: getMediaQueryWidth(
                                    context: context, value: 65),
                                //  26.w,
                                color: Color(0xff968677),
                                child: Image.network(
                                  "https://ii3.pepperfry.com/media/wysiwyg/banners/hp_need_help_p_6.jpg",
                                  fit: BoxFit.cover,
                                  height: getMediaQueryHeight(
                                      context: context, value: 120),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Call Now",
                                  style: TextStyle(fontSize: 18),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Sized(),
                    Container(
                      child: GestureDetector(
                        child: Text(
                          "Trends In Furniture And Decor",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {},
                      ),
                      height: getMediaQueryHeight(context: context, value: 60),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Sized(),
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 520),
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: product.length,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: ((context, index) =>
                            SizedBox(width: 0)),
                        itemBuilder: ((context, index) {
                          return Card(
                            child: Column(
                              children: [
                                Container(
                                  color: Colors.black,
                                  //   width: 185,
                                  width: getMediaQueryWidth(
                                      context: context, value: 185),
                                  child: Image.asset(
                                    product[index]["assets"].toString(),
                                    fit: BoxFit.cover,
                                    height: getMediaQueryHeight(
                                        context: context, value: 400),
                                    //  height: 150,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    product[index]["price"].toString(),
                                    textAlign: TextAlign.center,
                                    // overflow: TextOverflow.ellipsis,
                                    //_resultList[index].firstName,

                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24.0),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                    Sized(),
                    GestureDetector(
                      onTap: () {
                        Get.to(TestingLayout());
                      },
                      child: Container(
                          // height: getMediaQueryHeight(
                          //     context: context, value: 100),
                          width: getMediaQueryWidth(
                              context: context, value: double.infinity),
                          decoration: BoxDecoration(
                            color: Color(0xFFF7F2C8),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Image(
                            image: AssetImage("assets/bannernew.jpg"),
                            fit: BoxFit.fill,
                          )),
                    ),
                    Sized(),
                    Container(
                      child: GestureDetector(
                        child: Text(
                          "Inspire and Get Inspired",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {},
                      ),
                      height: getMediaQueryHeight(context: context, value: 60),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Sized(),
                    Container(
                      height: getMediaQueryHeight(context: context, value: 520),
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: product.length,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: ((context, index) =>
                            SizedBox(width: 0)),
                        itemBuilder: ((context, index) {
                          return Card(
                            child: Column(
                              children: [
                                Container(
                                  color: Colors.black,
                                  width: getMediaQueryWidth(
                                      context: context, value: 185),
                                  child: Image.asset(
                                    product[index]["info"].toString(),
                                    fit: BoxFit.fill,
                                    height: getMediaQueryHeight(
                                        context: context, value: 400),
                                    //  height: 150,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    product[index]["price"].toString(),
                                    textAlign: TextAlign.center,
                                    // overflow: TextOverflow.ellipsis,
                                    //_resultList[index].firstName,

                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24.0),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                    Sized(),
                    Center(
                      child: Text(
                        "Live what you see? You'll like us even more here",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    Sized(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Color(0xff334C8C),
                          child: Icon(FontAwesomeIcons.facebook),
                        ),
                        SizedBox(
                          width:
                              getMediaQueryWidth(context: context, value: 32),
                          // width: 18,
                        ),
                        GestureDetector(
                          onTap: () {
                            //Get.to(ProductCleanView());
                          },
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor: Color(0xff00A6DE),
                            child: Icon(FontAwesomeIcons.twitter),
                          ),
                        ),
                        SizedBox(
                          width:
                              getMediaQueryWidth(context: context, value: 32),
                        ),
                        GestureDetector(
                          onTap: () {
                            //   Get.to(ProductCleanView());
                          },
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor: Color(0xffBC1B7B),
                            child: Icon(FontAwesomeIcons.instagram),
                          ),
                        )
                      ],
                    ),
                    Sized(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Sized extends StatelessWidget {
  const Sized({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getMediaQueryHeight(context: context, value: 15),
    );
  }
}
