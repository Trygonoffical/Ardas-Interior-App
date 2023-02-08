import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:get_cli/Custom_widget/container_heigh.dart';
import 'package:get_cli/Model/model.dart';
import 'package:get_cli/app/modules/Search/views/search_view.dart';
import 'package:get_cli/app/modules/SholpScreen/views/sholp_screen_view.dart';
import 'package:intl/intl.dart';

import '../../Product_clean/views/product_clean_view.dart';
import '../../SholpScreen/ShopItem/views/shop_item_view.dart';
import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Text("Product View"),
              width: getMediaQueryWidth(context: context, value: 140),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.to(SearchView());
                  },
                  icon: Icon(FontAwesomeIcons.search),
                  iconSize: 20,
                ),
                SizedBox(
                  width: getMediaQueryWidth(context: context, value: 10),
                ),
                IconButton(
                  onPressed: () {
                    Get.to(ShopItemView());
                  },
                  icon: Icon(FontAwesomeIcons.cartShopping),
                  iconSize: 20,
                ),
              ],
            ),
          ],
        ),
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
                      Get.to(SholpScreenView());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: getMediaQueryHeight(
                                context: context, value: 100),
                            width: double.infinity,
                            child: Image.asset(
                              shopItem[index]["materialpic"].toString(),
                              fit: BoxFit.contain,
                            ),
                          ),

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
                            children: [
                              Text(
                                "Starting  ",
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                NumberFormat.simpleCurrency(
                                        locale: 'hi-IN', decimalDigits: 0)
                                    .format(5552522)
                                    .toString(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),

                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 2, color: Color(0xff964b00))),
                              height: getMediaQueryHeight(
                                  context: context, value: 28),
                              width: getMediaQueryWidth(
                                  context: context, value: 100),
                              child: Center(
                                  child: Text(
                                "976+ options",
                                style: TextStyle(color: Color(0xff964b00)),
                              ))),
                          SizedBox(
                            height: getMediaQueryHeight(
                                context: context, value: 10),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // SizedBox(
          //   height: getMediaQueryHeight(context: context, value: 5),
          // )
        ],
      ),
    );
  }
}
