import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_cli/Custom_widget/container_heigh.dart';

import '../../PaymentPage/views/payment_page_view.dart';
import '../controllers/adress_enter_page_controller.dart';

class AdressEnterPageView extends GetView<AdressEnterPageController> {
  const AdressEnterPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: GestureDetector(
          onTap: () {},
          child: GestureDetector(
            onTap: () {
              Get.to(PaymentPageView());
            },
            child: Container(
              height: getMediaQueryHeight(context: context, value: 65),
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  'SAVE AND CONTINUE',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xFFEBEBEB),
        appBar: AppBar(
          title: const Text('ENTER YOUR ADDRESS'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            isDense: true,
                            label: Text(
                              "First Name *",
                              style: TextStyle(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            isDense: true,
                            label: Text(
                              "Last Name *",
                              style: TextStyle(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            isDense: true,
                            label: Text(
                              "Email Address *",
                              style: TextStyle(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            isDense: true,
                            label: Text(
                              "Phone Number *",
                              style: TextStyle(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: getMediaQueryHeight(context: context, value: 15),
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            isDense: true,
                            label: Text(
                              "Pincode *",
                              style: TextStyle(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          // maxLines: null,
                          // expands: true,
                          decoration: InputDecoration(
                            isDense: true,
                            label: Text(
                              "Address *",
                              style: TextStyle(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          // maxLines: null,
                          // expands: true,
                          decoration: InputDecoration(
                            isDense: true,
                            label: Text(
                              "Landmark (optional) *",
                              style: TextStyle(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: getMediaQueryHeight(context: context, value: 15),
                  ),
                  Container(
                    width: getMediaQueryWidth(
                        context: context, value: double.infinity),
                    color: Colors.white,
                    height: getMediaQueryHeight(context: context, value: 50),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 14.0, left: 8),
                      child: Text(
                        "Use as billing address",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getMediaQueryHeight(context: context, value: 15),
                  ),

                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "For business users",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: getMediaQueryHeight(
                                context: context, value: 15),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              label: Text(
                                "GSTIN(optional)",
                                style: TextStyle(color: Colors.grey),
                              ),
                              focusedBorder: UnderlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: getMediaQueryHeight(
                                context: context, value: 15),
                          ),
                          Text(
                            ("Goods and Services Tax (GST) is a successor to VAT used in India on the supply of goods and services. it is collected from point of consumption and not point of origin like previous taxes."),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Row(
                  //     children: [
                  //       Checkbox(
                  //         value:
                  //      //   controller.isChecked , //false
                  //         activeColor: Colors.green,
                  //         onChanged: (value) {
                  //         //  controller.billingController.text =
                  //         //      controller.shippingController.text;
                  //         },
                  //       ),
                  //       Text("Ship to Same address?"),
                  //     ],
                  //   ),
                  SizedBox(
                    height: getMediaQueryHeight(context: context, value: 80),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
