import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get_cli/Custom_widget/container_heigh.dart';
import 'package:intl/intl.dart';
import '../../../../Model/model.dart';
import '../ShopItem/views/shop_item_view.dart';
import '../controllers/sholp_screen_controller.dart';

class SholpScreenView extends StatefulWidget {
  const SholpScreenView({Key? key}) : super(key: key);

  @override
  State<SholpScreenView> createState() => _SholpScreenViewState();
}

class _SholpScreenViewState extends State<SholpScreenView> {
  bool descTextShowFlag = false;
  bool Isloaderimage = false;
  bool isLoading = false;
  bool ischeck = false;
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Text("Shopping"),
              width: getMediaQueryWidth(context: context, value: 140),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.phone),
              iconSize: 18,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.message),
              iconSize: 18,
            ),
            IconButton(
              onPressed: () {
                Get.to(ShopItemView());
              },
              icon: Icon(FontAwesomeIcons.cartShopping),
              iconSize: 18,
            ),
          ],
        ),
      ),

      // Bottom Sheet page
      bottomSheet: BottomAppBar(
        elevation: 4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Text(
            //       "38% off",
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 16,
            //       ),
            //     ),
            //     SizedBox(
            //         height: getMediaQueryHeight(context: context, value: 25),
            //         // width: getMediaQueryWidth(context: context, value: 60),
            //         child:
            //             ElevatedButton(onPressed: () {}, child: Text("SALE")))
            //   ],
            // ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Text(
            //       "MRP" +
            //           " " +
            //           NumberFormat.simpleCurrency(
            //                   locale: 'hi-IN', decimalDigits: 0)
            //               .format(208854)
            //               .toString(),
            //       style: TextStyle(
            //         decoration: TextDecoration.lineThrough,
            //         color: Color.fromARGB(255, 184, 182, 182),
            //         fontSize: 12,
            //       ),
            //     ),
            //     Text(
            //       NumberFormat.simpleCurrency(
            //               locale: 'hi-IN', decimalDigits: 0)
            //           .format(208876)
            //           .toString(),
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 16,
            //           fontWeight: FontWeight.bold),
            //     ),
            //     Text(
            //       "(inclusive of all taxes)",
            //       style: TextStyle(color: Colors.white, fontSize: 12),
            //     )
            //   ],
            // ),

            GestureDetector(
              onTap: () {
                Get.to(ShopItemView());
              },
              child: Container(
                height: getMediaQueryHeight(context: context, value: 55),
                width: MediaQuery.of(context).size.width / 2,
                child: Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                color: Color(0xFFE7E2E2),
                // onPressed: () {
                //   Get.to(ShopItemView());
                // },
              ),
            ),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width / 2,
            //   child: ElevatedButton(
            //     child: Text(
            //       "Add To Card",
            //     ),
            //     onPressed: () {
            //       Get.to(ShopItemView());
            //     },
            //   ),
            // ),
            GestureDetector(
              onTap: () {
                Get.to(ShopItemView());
              },
              child: Container(
                height: getMediaQueryHeight(context: context, value: 55),
                width: MediaQuery.of(context).size.width / 2,
                child: Center(
                    child: Text(
                  "Buy Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
                color: Colors.redAccent,
                // onPressed: () {
                //   Get.to(ShopItemView());
                // },
              ),
            ),
          ],
        ),
      ),
      // Container(
      //   padding: EdgeInsets.all(0),
      //   color: Colors.black,
      //   height: getMediaQueryHeight(context: context, value: 65),
      //   width: getMediaQueryWidth(context: context, value: double.infinity),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Text(
      //             "38% off",
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 16,
      //             ),
      //           ),
      //           SizedBox(
      //               height: getMediaQueryHeight(context: context, value: 25),
      //               width: getMediaQueryWidth(context: context, value: 70),
      //               child:
      //                   ElevatedButton(onPressed: () {}, child: Text("SALE")))
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Text(
      //             "MRP" +
      //                 " " +
      //                 NumberFormat.simpleCurrency(
      //                         locale: 'hi-IN', decimalDigits: 0)
      //                     .format(208854)
      //                     .toString(),
      //             style: TextStyle(
      //               decoration: TextDecoration.lineThrough,
      //               color: Color.fromARGB(255, 184, 182, 182),
      //               fontSize: 12,
      //             ),
      //           ),
      //           Text(
      //             NumberFormat.simpleCurrency(locale: 'hi-IN', decimalDigits: 0)
      //                 .format(208876)
      //                 .toString(),
      //             style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 18,
      //                 fontWeight: FontWeight.bold),
      //           ),
      //           Text(
      //             "(inclusive of all taxes)",
      //             style: TextStyle(color: Colors.white, fontSize: 12),
      //           )
      //         ],
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => ShoppingCard()));
      //         },
      //         child: Container(
      //           decoration: BoxDecoration(
      //             border: Border.all(width: 1),
      //             color: Colors.white,
      //           ),
      //           height: getMediaQueryHeight(context: context, value: 65),
      //           width: getMediaQueryWidth(context: context, value: 110),
      //           child: Center(child: Text("ADD TO CART")),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
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
              SizedBox(
                height: 25,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: (() =>
                          carouselController.animateToPage(entry.key)),
                      child: Container(
                        width: currentIndex == entry.key ? 17 : 7,
                        height: 7.0,
                        margin: EdgeInsets.symmetric(horizontal: 3.0),
                        decoration: BoxDecoration(
                            color: currentIndex == entry.key
                                ? Colors.black
                                : Color(0xFFCFC5C5)),
                      ),
                    );
                  }).toList()),
              SizedBox(
                height: getMediaQueryHeight(context: context, value: 15),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      //  width: getMediaQueryWidth(context: context, value: 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " American Style Sofa ",
                            //    widget.cityData['price'],
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "(Green)",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text("By Durian"),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   width: getMediaQueryWidth(context: context, value: 90),
                    // ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFCFC5C5),
                          child: Icon(FontAwesomeIcons.share),
                        ),
                        SizedBox(
                          width:
                              getMediaQueryWidth(context: context, value: 20),
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xFFCFC5C5),
                          child: Icon(FontAwesomeIcons.heart),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: getMediaQueryHeight(context: context, value: 15),
              ),
              Text("COLORS & FABRIC"),
              SizedBox(
                height: getMediaQueryHeight(context: context, value: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 20,
                  ),
                  SizedBox(
                    width: getMediaQueryWidth(context: context, value: 10),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xFFF0B9CB),
                    radius: 20,
                  )
                ],
              ),
              SizedBox(
                height: getMediaQueryHeight(context: context, value: 15),
              ),
              Text("SET CONFIGURATION"),
              SizedBox(
                height: getMediaQueryHeight(context: context, value: 15),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: getMediaQueryHeight(context: context, value: 50),
                  width: getMediaQueryWidth(
                      context: context, value: double.infinity),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("3-seater"),
                        Icon(FontAwesomeIcons.angleDown)
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 8,
              ),

              // ListView(
              //   scrollDirection: Axis.vertical,
              //   physics: NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   children: str.map((strone) {
              //     return Row(children: [
              //       Text(
              //         "\u2022",
              //         style: TextStyle(fontSize: 30),
              //       ), //bullet text
              //       SizedBox(
              //         width: 10,
              //       ), //space between bullet and text
              //       Expanded(
              //         child: Text(
              //           strone.toString(),
              //           style: TextStyle(fontSize: 30),
              //         ), //text
              //       )
              //     ]);
              //   }).toList(),
              // ),

              // ListView(
              //   physics: NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   scrollDirection: Axis.vertical,
              //   children: str.map((strone) {
              //     return Row(children: [
              //       Text(
              //         "\u2022",
              //         style: TextStyle(fontSize: 30),
              //       ), //bullet text
              //       SizedBox(
              //         width: 10,
              //       ), //space between bullet and text
              //       Expanded(
              //         child: Text(
              //           strone.toString(),
              //           style: TextStyle(fontSize: 30),
              //         ), //text
              //       )
              //     ]);
              //   }).toList(),
              // ),
              //  ExpandableText("Hello"),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: getMediaQueryWidth(
                      context: context, value: double.infinity),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PRODUCT DETAILS",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height:
                            getMediaQueryHeight(context: context, value: 15),
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(str[0].toString(),
                                maxLines: descTextShowFlag ? 100 : 5,
                                textAlign: TextAlign.start),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Flexible(
                            child: Text(str[0].toString(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: descTextShowFlag ? 100 : 5,
                                textAlign: TextAlign.start),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(str[1].toString(),
                                maxLines: descTextShowFlag ? 100 : 5,
                                textAlign: TextAlign.start),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Flexible(
                            child: Text(str[1].toString(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: descTextShowFlag ? 100 : 5,
                                textAlign: TextAlign.start),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    descTextShowFlag = !descTextShowFlag;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      descTextShowFlag
                          ? Text(
                              "Show Less...",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          : Text("Show More...",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 8,
              ),
              ListTile(
                leading: Image(image: AssetImage("assets/lighting.jpg")),
                title: Text("Zero Cost EMIs from"),
                // "Zero Cost EMIs from ${widget.cityData['score']}*"),
                subtitle: Text("other EMIs from 6379 Know More.."),
              ),
              Divider(
                thickness: 8,
              ),
              SizedBox(
                height: getMediaQueryHeight(context: context, value: 15),
              ),
              Container(
                decoration: BoxDecoration(color: Color(0xFFE6FAE7)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Special price",
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "23% off",
                            style: TextStyle(color: Colors.green, fontSize: 18),
                          ),
                          SizedBox(
                            width:
                                getMediaQueryWidth(context: context, value: 8),
                          ),
                          Text(
                            NumberFormat.simpleCurrency(
                                    locale: 'hi-IN', decimalDigits: 0)
                                .format(5552522)
                                .toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontSize: 18),
                          ),
                          SizedBox(
                            width:
                                getMediaQueryWidth(context: context, value: 8),
                          ),
                          Text(
                            NumberFormat.simpleCurrency(
                                    locale: 'hi-IN', decimalDigits: 0)
                                .format(4552522)
                                .toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 10),
                    )
                  ],
                ),
              ),

              // Row(
              //   children: [
              //     Text(
              //       NumberFormat.simpleCurrency(
              //               locale: 'hi-IN', decimalDigits: 0)
              //           .format(2000)
              //           .toString(),
              //       style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //           decoration: TextDecoration.lineThrough,
              //           color: Colors.grey,
              //           fontSize: 16),
              //     ),
              //   ],
              // ),
              ListTile(
                leading: Icon(FontAwesomeIcons.mapLocation),
                title: Text(
                  "Bangolore - 560001",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                      title: "",
                      backgroundColor: Colors.white,
                      barrierDismissible: false,
                      radius: 15,
                      content: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Enter pincode",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(Icons.close))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Container(
                              width: double.infinity,
                              height: getMediaQueryHeight(
                                  context: context, value: 45),
                              decoration: BoxDecoration(
                                  color: Color(0xffF6F5F6),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      spreadRadius: 0.05,
                                      blurRadius: 1,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(9)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: getMediaQueryWidth(
                                        context: context, value: 15),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        // hintStyle: GoogleFonts.poppins(
                                        //     color: Color(0xff707070),
                                        //     fontSize: 14,
                                        //     fontWeight:
                                        //         FontWeight.normal),
                                        border: InputBorder.none,
                                        hintText: "Pincode",
                                      ),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: EdgeInsets.symmetric(horizontal: 15),
                                  //   child: Icon(
                                  //     Icons.search,
                                  //     color: Color(0xff707070),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getMediaQueryHeight(
                                context: context, value: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: getMediaQueryWidth(
                                      context: context, value: 100),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: Text("Cancel")),
                                ),
                                SizedBox(
                                  width: getMediaQueryWidth(
                                      context: context, value: 100),
                                  child: ElevatedButton(
                                      onPressed: () {}, child: Text("Confirm")),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height:
                                getMediaQueryHeight(context: context, value: 5),
                          )
                        ],
                      ),
                    );
                  },
                  child: Text(
                    "Change",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),

              Divider(
                thickness: 4,
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.bus),
                title: Row(
                  children: [
                    Text("Delivery between"),
                    Text("  jan 31 - Feb 2",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              ),
              Container(
                height: getMediaQueryHeight(context: context, value: 70),
                width: double.infinity,
                color: Color(0xFFFAF4BB),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "You can cancel your order before shipped, and a full refund will be initiated",
                    style: TextStyle(
                      color: Color(0xFF686666),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )),
              ),
              Divider(
                thickness: 8,
              ),
              Container(
                height: getMediaQueryHeight(context: context, value: 120),
                width: getMediaQueryWidth(
                    context: context, value: double.infinity),
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 10),
                    ),
                    Text(
                      "Visit Our Store",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.002,
                      width: getMediaQueryWidth(context: context, value: 90),
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 10),
                    ),
                    ListTile(
                      leading: Icon(FontAwesomeIcons.building),
                      title: Text(
                          "To explore more gorgeous designs, drop into our store"),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 8,
              ),
              Container(
                height: getMediaQueryHeight(context: context, value: 200),
                width: getMediaQueryWidth(
                    context: context, value: double.infinity),
                child: Column(
                  children: [
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 10),
                    ),
                    Text(
                      "We Offer",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.002,
                      width: getMediaQueryWidth(context: context, value: 50),
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: getMediaQueryHeight(
                                  context: context, value: 10),
                            ),
                            Icon(
                              FontAwesomeIcons.bus,
                              size: 50,
                            ),
                            SizedBox(
                              height: getMediaQueryHeight(
                                  context: context, value: 15),
                            ),
                            Text("FREE DELIVERY"),
                            SizedBox(
                              height: getMediaQueryHeight(
                                  context: context, value: 10),
                            ),
                            Text(
                              "(IN SELECT CITIES)",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: getMediaQueryHeight(
                                  context: context, value: 20),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.bug,
                              size: 50,
                            ),
                            SizedBox(
                              height: getMediaQueryHeight(
                                  context: context, value: 15),
                            ),
                            Text("FREE"),
                            SizedBox(
                              height: getMediaQueryHeight(
                                  context: context, value: 10),
                            ),
                            Text(
                              "INSTALLATION",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: getMediaQueryHeight(
                                  context: context, value: 10),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.bus,
                              size: 50,
                            ),
                            SizedBox(
                              height: getMediaQueryHeight(
                                  context: context, value: 15),
                            ),
                            Text("EASY"),
                            SizedBox(
                              height: getMediaQueryHeight(
                                  context: context, value: 10),
                            ),
                            Text(
                              "FINANCE OPTIONS",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: getMediaQueryHeight(
                                  context: context, value: 10),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

              Divider(
                thickness: 8,
              ),
              Container(
                height: getMediaQueryHeight(context: context, value: 280),
                width: getMediaQueryWidth(
                    context: context, value: double.infinity),
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 10),
                    ),
                    Text(
                      "Product Dimensions",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.002,
                      width: getMediaQueryWidth(context: context, value: 90),
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 10),
                    ),
                    Image.asset(
                      "assets/appliances.jpg",
                      fit: BoxFit.fill,
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 8,
              ),
              Container(
                height: getMediaQueryHeight(context: context, value: 280),
                width: getMediaQueryWidth(
                    context: context, value: double.infinity),
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 10),
                    ),
                    Text(
                      "Product Video",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.002,
                      width: getMediaQueryWidth(context: context, value: 90),
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 30),
                    ),
                    Container(
                        height:
                            getMediaQueryHeight(context: context, value: 200),
                        width: getMediaQueryWidth(
                            context: context, value: double.infinity),
                        color: Colors.black,
                        child: Image.asset(
                          "assets/appliances.jpg",
                        ))
                  ],
                ),
              ),
              Divider(
                thickness: 8,
              ),
              Container(
                height: getMediaQueryHeight(context: context, value: 300),
                width: getMediaQueryWidth(
                    context: context, value: double.infinity),
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 10),
                    ),
                    Text(
                      "Similar Products",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.002,
                      width: getMediaQueryWidth(context: context, value: 90),
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: SizedBox(
                        height:
                            getMediaQueryHeight(context: context, value: 220),
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
                              onTap: () {},
                              // getDataDetails(product[index], context),
                              child: Card(
                                elevation: 2,
                                child: Container(
                                  width: getMediaQueryWidth(
                                      context: context, value: 150),
                                  //  width: MediaQuery.of(context).size.width * 0.38,
                                  //height: 30.5.h
                                  //   width: MediaQuery.of(context).size.width * 0.35,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                        children: [
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Stack(
                                            children: [
                                              Text(
                                                NumberFormat.simpleCurrency(
                                                        locale: 'hi-IN',
                                                        decimalDigits: 0)
                                                    .format(
                                                        product[index]["score"])
                                                    .toString(),
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    color: Colors.grey,
                                                    fontSize: 12),
                                              ),

                                              // Prise Devider cross line
                                              Positioned(
                                                top: 4,
                                                child: Container(
                                                  width: getMediaQueryWidth(
                                                      context: context,
                                                      value: 60),
                                                  height: getMediaQueryHeight(
                                                      context: context,
                                                      value: 2),
                                                  color: Color(0xFF9E9E9E),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                              width: getMediaQueryWidth(
                                                  context: context, value: 6)
                                              //6,
                                              ),
                                          Expanded(
                                            child: Text(
                                              NumberFormat.simpleCurrency(
                                                      locale: 'hi-IN',
                                                      decimalDigits: 0)
                                                  .format(2929528)
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Color(0xFF2196F3),
                                                  fontSize: 12),
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
                  ],
                ),
              ),

              // Customer Stories

              Divider(
                thickness: 8,
              ),
              Container(
                height: getMediaQueryHeight(context: context, value: 600),
                width: getMediaQueryWidth(
                    context: context, value: double.infinity),
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 10),
                    ),
                    Text(
                      "Customer Stories",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.002,
                      width: getMediaQueryWidth(context: context, value: 90),
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: SizedBox(
                        height:
                            getMediaQueryHeight(context: context, value: 500),
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
                              onTap: () {},
                              // getDataDetails(product[index], context),
                              child: Card(
                                elevation: 2,
                                child: Container(
                                  width: getMediaQueryWidth(
                                      context: context, value: 250),
                                  //  width: MediaQuery.of(context).size.width * 0.38,
                                  //height: 30.5.h
                                  //   width: MediaQuery.of(context).size.width * 0.35,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        color: Color(0xFFDAD5D5),
                                        child: ListTile(
                                          leading: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("assets/rugd.jpg"),
                                            radius: 25,
                                          ),
                                          title: Text(
                                            "Ravi patel".toUpperCase(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13),
                                          ),
                                          subtitle: Text(
                                            "Via facebook",
                                            style: TextStyle(
                                                color: Color(0xFFADACAC)),
                                          ),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 10,
                                      // ),
                                      SizedBox(
                                          height: getMediaQueryHeight(
                                              context: context, value: 200),
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
                                            context: context, value: 10),
                                      ),
                                      Text(
                                          overflow: TextOverflow.ellipsis,
                                          "Ravi Patel (Orange)"),
                                      SizedBox(
                                        height: getMediaQueryHeight(
                                            context: context, value: 10),
                                      ),
                                      Text("VIEW PRODUCT"),

                                      Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Text(
                                            "Times when the Apollo doubles up as a jumping castle #ULstory",
                                            textAlign: TextAlign.justify,
                                            style:
                                                TextStyle(letterSpacing: 1.5),
                                            maxLines: 5,
                                            overflow: TextOverflow.ellipsis),
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
                  ],
                ),
              ),

              Container(
                height: getMediaQueryHeight(context: context, value: 80),
                width: double.infinity,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
// class SholpScreenView extends GetView<SholpScreenController> {
//   SholpScreenView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     CarouselController sController = Get.put(CarouselController());
//     SholpScreenController Controller = Get.put(SholpScreenController());
//     return 
//   }
// }
