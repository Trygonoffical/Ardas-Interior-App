import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../Custom_widget/container_heigh.dart';
import '../controllers/order_track_controller.dart';

class OrderTrackView extends GetView<OrderTrackController> {
  const OrderTrackView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Track Order"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 70),
                  width: getMediaQueryWidth(context: context, value: 250),
                  child: Text(
                    "Track your Order using Order Number",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 2,
                      wordSpacing: 2,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 15),
                ),
                Container(
                  width: double.infinity,
                  height: getMediaQueryHeight(context: context, value: 45),
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
                        width: getMediaQueryWidth(context: context, value: 15),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            // hintStyle: GoogleFonts.poppins(
                            //     color: Color(0xff707070),
                            //     fontSize: 14,
                            //     fontWeight: FontWeight.normal),
                            border: InputBorder.none,
                            hintText: "Order Number",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 15),
                ),
                Container(
                  width: double.infinity,
                  height: getMediaQueryHeight(context: context, value: 45),
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
                        width: getMediaQueryWidth(context: context, value: 15),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            // hintStyle: GoogleFonts.poppins(
                            //     color: Color(0xff707070),
                            //     fontSize: 14,
                            //     fontWeight: FontWeight.normal),
                            border: InputBorder.none,
                            hintText: "Phone Number",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 25),
                ),
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 45),
                  width: getMediaQueryWidth(context: context, value: 270),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("SUBMIT"),
                  ),
                ),
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 25),
                ),
                Text("- OR -"),
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 25),
                ),
                Card(
                  child: Container(
                    height: getMediaQueryHeight(context: context, value: 45),
                    width: getMediaQueryWidth(context: context, value: 250),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                        child: Text(
                      "LOGIN TO TRACK ALL YOUR ORDERS",
                      textAlign: TextAlign.center,
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
