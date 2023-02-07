import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get_cli/Custom_widget/container_heigh.dart';
import 'package:get_cli/app/modules/HelpPage/Help_Expention/views/help_expention_view.dart';
import '../controllers/help_page_controller.dart';

class HelpPageView extends GetView<HelpPageController> {
  const HelpPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: (BoxDecoration(color: Colors.black)),
            height: getMediaQueryHeight(context: context, value: 150),
            width: getMediaQueryWidth(context: context, value: double.infinity),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Help Center",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: double.infinity,
                    height: getMediaQueryHeight(context: context, value: 40),
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
                          width:
                              getMediaQueryWidth(context: context, value: 10),
                        ),
                        Icon(Icons.search),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15, top: 17),
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (() {
                Get.to(HelpExpentionView());
              }),
              title: Text("Deal Zone"),
              trailing: Icon(FontAwesomeIcons.arrowRight),
            ),
          ),
          // ExpansionTile(
          //   textColor: Colors.red,
          //   title: Text("DEAL ZONE"),
          //   childrenPadding: EdgeInsets.zero,
          //   children: [
          //     Container(
          //       width: double.infinity,
          //       color: Color(0xFFF5F1F1),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 10),
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Column(
          //                   mainAxisAlignment: MainAxisAlignment.start,
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     ExpansionTile(
          //                         textColor: Colors.black,
          //                         iconColor: Colors.black,
          //                         childrenPadding:
          //                             EdgeInsets.only(right: 50, bottom: 0),
          //                         tilePadding:
          //                             EdgeInsets.only(left: 20, bottom: 0),
          //                         title: const Text('TOP DEALS'),
          //                         children: [
          //                           Padding(
          //                             padding: const EdgeInsets.all(8.0),
          //                             child: Column(
          //                               mainAxisAlignment:
          //                                   MainAxisAlignment.spaceEvenly,
          //                               crossAxisAlignment:
          //                                   CrossAxisAlignment.start,
          //                               children: const [
          //                                 Text(
          //                                   "START OF JANUARY",
          //                                   style: TextStyle(fontSize: 14),
          //                                 ),
          //                                 SizedBox(
          //                                   height: 10,
          //                                 ),
          //                                 Text(
          //                                   "DAILY DEALS",
          //                                   style: TextStyle(fontSize: 14),
          //                                 ),
          //                                 SizedBox(
          //                                   height: 10,
          //                                 ),
          //                                 Text(
          //                                   "WEEKDAY SPECIAL DEALS",
          //                                   style: TextStyle(fontSize: 14),
          //                                 ),
          //                                 SizedBox(
          //                                   height: 10,
          //                                 ),
          //                                 Text(
          //                                   "STUNNING DEALS",
          //                                   style: TextStyle(fontSize: 14),
          //                                 ),
          //                                 SizedBox(
          //                                   height: 10,
          //                                 ),
          //                                 Text(
          //                                   "CLEARANCE SALES",
          //                                   style: TextStyle(fontSize: 14),
          //                                 ),
          //                                 SizedBox(
          //                                   height: 10,
          //                                 ),
          //                                 Text(
          //                                   "TOP 100 LIGHTING",
          //                                   style: TextStyle(fontSize: 14),
          //                                 ),
          //                                 SizedBox(
          //                                   height: 10,
          //                                 ),
          //                                 Text(
          //                                   "ALL PRODUCTS ON SALE",
          //                                   style: TextStyle(fontSize: 14),
          //                                 ),
          //                                 SizedBox(
          //                                   height: 10,
          //                                 ),
          //                                 Text(
          //                                   "ALL DECOR ON SALE",
          //                                   style: TextStyle(fontSize: 14),
          //                                 ),
          //                               ],
          //                             ),
          //                           ),
          //                         ]
          //                         // data.map((data) {
          //                         //   return ListTile(title: Text(data));
          //                         // }).toList(),
          //                         ),
          //                   ],
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
