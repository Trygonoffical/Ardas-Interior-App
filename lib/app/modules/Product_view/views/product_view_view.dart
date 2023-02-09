import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../../Custom_widget/container_heigh.dart';
import '../../../../Model/model.dart';
import '../controllers/product_view_controller.dart';

class ProductViewView extends GetView<ProductViewController> {
  const ProductViewView({Key? key}) : super(key: key);
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
          ],
        ),
      ),
      // appBar: AppBar(
      //   title:  Text('Product View'),
      //   centerTitle: true,
      // ),
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
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Image.asset(
                                shopItem[index]["materialpic"].toString(),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Divider(
                              thickness: 2,
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
                              children: [
                                Text(
                                  "Starting  ",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Flexible(
                                  child: Text(
                                    NumberFormat.simpleCurrency(
                                            locale: 'hi-IN', decimalDigits: 0)
                                        .format(5552522)
                                        .toString(),
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          top: 110,
                          left: 30,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 2)),
                              height: getMediaQueryHeight(
                                  context: context, value: 28),
                              width: getMediaQueryWidth(
                                  context: context, value: 100),
                              child: Center(child: Text("976+ options"))),
                        ),
                      ],
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
  }
}
