import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get_cli/app/modules/AdressEnterPage/views/adress_enter_page_view.dart';
import 'package:intl/intl.dart';
import '../../../../../Custom_widget/container_heigh.dart';
import '../controllers/shop_item_controller.dart';

class ShopItemView extends GetView<ShopItemController> {
  const ShopItemView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ShopItemController shopItemController = Get.put(ShopItemController());
    return Scaffold(
      backgroundColor: Color(0xFFEBEBEB),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Text(
                "SHOPPING ITEMS",
                style: TextStyle(fontSize: 16),
              ),
              width: getMediaQueryWidth(context: context, value: 150),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.message),
              iconSize: 18,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.shareNodes),
              iconSize: 18,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.heart),
              iconSize: 18,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.locationDot),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Enter pincode",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                          onPressed: () {},
                                          child: Text("Confirm")),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: getMediaQueryHeight(
                                    context: context, value: 5),
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
                ),
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 10),
                ),
                Center(
                  child: Container(
                    color: Colors.white,
                    height: getMediaQueryHeight(context: context, value: 60),
                    width: getMediaQueryWidth(
                        context: context, value: double.infinity),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "* All discounts are dynamic and can be subject to change at any time...,",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(
                        height:
                            getMediaQueryHeight(context: context, value: 150),
                        width:
                            getMediaQueryHeight(context: context, value: 150),
                        child: Image(
                          image: AssetImage(
                            "assets/bed.jpg",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              maxLines: 3,
                              "Liom Engineered Wood Shutter TV Unit",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: getMediaQueryHeight(
                                  context: context, value: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: 8,
                                  itemBuilder: (context, index) {
                                    return RichText(
                                      // Controls visual overflow
                                      overflow: TextOverflow.clip,

                                      textAlign: TextAlign.start,

                                      // Whether the text should break at soft line breaks
                                      softWrap: true,

                                      // Maximum number of lines for the text to span
                                      maxLines: 1,

                                      // The number of font pixels for each logical pixel
                                      // textScaleFactor: 1,
                                      text: const TextSpan(
                                        text: 'Finish :',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        children: [
                                          TextSpan(
                                              text: '    Classic Wolnut',
                                              style: TextStyle(
                                                  color: Color(0xFF555454),
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  height: getMediaQueryHeight(context: context, value: 45),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width:
                              getMediaQueryWidth(context: context, value: 25),
                        ),
                        Container(
                          height:
                              getMediaQueryHeight(context: context, value: 30),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: DropdownButton(
                              isDense: true,
                              elevation: 0,
                              underline: Container(),
                              hint: Text(
                                ' Item 3',
                              ),
                              onChanged: (String? newValue) {
                                shopItemController.selected.value = newValue!;
                              },
                              value: shopItemController.selected.value == ""
                                  ? null
                                  : shopItemController.selected.value,
                              items:
                                  shopItemController.items.map((selectedType) {
                                return DropdownMenuItem(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      selectedType,
                                    ),
                                  ),
                                  value: selectedType,
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:
                              getMediaQueryWidth(context: context, value: 45),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "43% OFF",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: getMediaQueryWidth(
                                    context: context, value: 5),
                              ),
                              Text(
                                NumberFormat.simpleCurrency(
                                        locale: 'hi-IN', decimalDigits: 0)
                                    .format(36932)
                                    .toString(),
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: getMediaQueryWidth(
                                    context: context, value: 5),
                              ),
                              Text(
                                NumberFormat.simpleCurrency(
                                        locale: 'hi-IN', decimalDigits: 0)
                                    .format(36932)
                                    .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width:
                              getMediaQueryWidth(context: context, value: 10),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 2,
                ),
                Container(
                  height: getMediaQueryHeight(context: context, value: 50),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("DELIVERY BY:"),
                        Text("Feb 12th -feb 14th,2023"),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: getMediaQueryHeight(context: context, value: 3),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.5),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("NOTE:"),
                        SizedBox(
                          height:
                              getMediaQueryHeight(context: context, value: 15),
                        ),
                        Text(
                            "You can cancel your order before shipped, and a full refund will be initiated"),
                        Divider(),
                        SizedBox(
                          height:
                              getMediaQueryHeight(context: context, value: 15),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.delete,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: getMediaQueryWidth(
                                        context: context, value: 10),
                                  ),
                                  Text(
                                    "Remove",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.grey,
                              height: getMediaQueryHeight(
                                  context: context, value: 30),
                              width: 2,
                            ),
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.heart,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: getMediaQueryWidth(
                                      context: context, value: 10),
                                ),
                                Text(
                                  "MOVE TO WISHLIST",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 15),
                ),
                Container(
                  height: getMediaQueryHeight(context: context, value: 60),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Get a coupon ?",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            height: getMediaQueryHeight(
                                context: context, value: 50),
                            width: getMediaQueryWidth(
                                context: context, value: 100),
                            child: Center(
                                child: Text(
                              "APPLY",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 15),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Cart Total"),
                            Text(
                              "1,17,600",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Your Saving"),
                            Text(
                              "- 41,160",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Delivery Charge"),
                            Text(
                              "FREE",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total Payble Amount"),
                            Text(
                              "76,440",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color(0xFFD7D8D7),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              child: Icon(
                                FontAwesomeIcons.empire,
                                size: 25,
                              ),
                            ),
                            title: Text(
                              "Zero cost EMIs from 25,480",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "Other EMIs from 3,671",
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 80),
                )
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      NumberFormat.simpleCurrency(
                              locale: 'hi-IN', decimalDigits: 2)
                          .format(36932)
                          .toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 10),
                    ),
                    Text(
                      "Grand Total",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getMediaQueryHeight(context: context, value: 45),
                width: getMediaQueryWidth(context: context, value: 180),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(AdressEnterPageView());
                  },
                  child: Text(
                    "CHECKOUT",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
