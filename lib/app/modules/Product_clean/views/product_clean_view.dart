import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get_cli/app/modules/Filter_page/views/filter_page_view.dart';
import 'package:get_cli/app/modules/SholpScreen/ShopItem/views/shop_item_view.dart';
import 'package:intl/intl.dart';
import '../../../../Custom_widget/container_heigh.dart';
import '../../../../Model/model.dart';
import '../controllers/product_clean_controller.dart';

class ProductCleanView extends GetView<ProductCleanController> {
  const ProductCleanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: GestureDetector(
        child: BottomAppBar(
          color: Colors.redAccent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.filter,
                color: Colors.white,
              ),
              SizedBox(
                width: getMediaQueryWidth(context: context, value: 20),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(FilterPageView());
                },
                child: Container(
                  height: getMediaQueryHeight(context: context, value: 55),
                  child: Center(
                      child: Text(
                    "Short / filter",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Solid Bed'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.grey.shade300,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 200, // here set custom Height You Want
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(ShopItemView());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: getMediaQueryHeight(
                                    context: context, value: 140),
                                width: double.infinity,
                                child: Image.asset(
                                  shopItem[index]["materialpic"].toString(),
                                  fit: BoxFit.fill,
                                ),
                              ),

                              // SizedBox(
                              //   height: getMediaQueryHeight(
                              //       context: context, value: 5),
                              // ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.0, bottom: 5),
                                child: Text(
                                  shopItem[index]["materialname"].toString(),
                                ),
                              ),
                              // SizedBox(
                              //   height: getMediaQueryHeight(
                              //       context: context, value: 2),
                              // ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    NumberFormat.simpleCurrency(
                                            locale: 'hi-IN', decimalDigits: 0)
                                        .format(5552522)
                                        .toString(),
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                  SizedBox(
                                    width: getMediaQueryWidth(
                                        context: context, value: 5),
                                  ),
                                  Text(
                                    NumberFormat.simpleCurrency(
                                            locale: 'hi-IN', decimalDigits: 0)
                                        .format(4552522)
                                        .toString(),
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "EMI ",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    NumberFormat.simpleCurrency(
                                            locale: 'hi-IN', decimalDigits: 0)
                                        .format(676)
                                        .toString(),
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      Colors.redAccent.withOpacity(0.8),
                                  child: Text(
                                    "20% off",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 9,
                                    ),
                                  ),
                                ),
                                Icon(
                                  FontAwesomeIcons.heart,
                                  color: Colors.redAccent,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: getMediaQueryHeight(context: context, value: 5),
          )
        ],
      ),
    );
    //   bottomSheet: GestureDetector(
    //     onTap: () {
    //       Get.to(FilterPageView());
    //     },
    //     child: BottomAppBar(
    //       color: Colors.black,
    //       child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Icon(
    //             FontAwesomeIcons.filter,
    //             color: Colors.white,
    //           ),
    //           SizedBox(
    //             width: getMediaQueryWidth(context: context, value: 20),
    //           ),
    //           GestureDetector(
    //             onTap: () {},
    //             child: Container(
    //               height: getMediaQueryHeight(context: context, value: 45),
    //               child: Center(
    //                   child: Text(
    //                 "Short / filter",
    //                 style: TextStyle(
    //                     color: Colors.white,
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 16),
    //               )),
    //               color: Colors.black,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    //   appBar: AppBar(
    //     title: const Text('Solid Bed'),
    //     centerTitle: true,
    //   ),
    //   body: SingleChildScrollView(
    //     child: Column(
    //       children: [
    //         Text("Heelo"),
    //         Flexible(
    //           child: GestureDetector(
    //             onTap: () {
    //               Get.to(SholpScreenView());
    //             },
    //             child: Container(
    //               padding: EdgeInsets.all(10),
    //               color: Colors.grey.shade300,
    //               child: GridView.builder(
    //                 gridDelegate:
    //                     const SliverGridDelegateWithFixedCrossAxisCount(
    //                   crossAxisCount: 2,
    //                   crossAxisSpacing: 10,
    //                   mainAxisSpacing: 10,
    //                   mainAxisExtent: 200, // here set custom Height You Want
    //                 ),
    //                 itemCount: 10,
    //                 itemBuilder: (BuildContext context, int index) {
    //                   return Container(
    //                     decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(5),
    //                       color: Colors.white,
    //                     ),
    //                     child: Stack(
    //                       children: [
    //                         SizedBox(
    //                           height: 20,
    //                         ),
    //                         Column(
    //                           children: [
    //                             SizedBox(
    //                               height: getMediaQueryHeight(
    //                                   context: context, value: 150),
    //                               width: double.infinity,
    //                               child: Image.asset(
    //                                 shopItem[index]["materialpic"].toString(),
    //                                 fit: BoxFit.fill,
    //                               ),
    //                             ),

    //                             // SizedBox(
    //                             //   height: getMediaQueryHeight(
    //                             //       context: context, value: 5),
    //                             // ),
    //                             Padding(
    //                               padding:
    //                                   EdgeInsets.only(top: 10.0, bottom: 5),
    //                               child: Text(
    //                                 shopItem[index]["materialname"].toString(),
    //                               ),
    //                             ),
    //                             // SizedBox(
    //                             //   height: getMediaQueryHeight(
    //                             //       context: context, value: 2),
    //                             // ),
    //                             Row(
    //                               mainAxisAlignment: MainAxisAlignment.center,
    //                               children: [
    //                                 Text(
    //                                   "Starting  ",
    //                                   style: TextStyle(fontSize: 14),
    //                                 ),
    //                                 Text(
    //                                   NumberFormat.simpleCurrency(
    //                                           locale: 'hi-IN', decimalDigits: 0)
    //                                       .format(5552522)
    //                                       .toString(),
    //                                   style: TextStyle(
    //                                       fontWeight: FontWeight.bold),
    //                                 )
    //                               ],
    //                             ),
    //                           ],
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.all(4.0),
    //                           child: Row(
    //                             mainAxisAlignment:
    //                                 MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               CircleAvatar(
    //                                 radius: 20,
    //                                 backgroundColor:
    //                                     Colors.redAccent.withOpacity(0.8),
    //                                 child: Text(
    //                                   "20%",
    //                                   style: TextStyle(
    //                                     color: Colors.white,
    //                                     fontSize: 8,
    //                                   ),
    //                                 ),
    //                               ),
    //                               Icon(
    //                                 FontAwesomeIcons.heart,
    //                                 color: Colors.redAccent,
    //                                 size: 25,
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   );
    //                 },
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
