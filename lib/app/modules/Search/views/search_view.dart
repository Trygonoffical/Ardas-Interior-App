import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_cli/Custom_widget/container_heigh.dart';
import 'package:get_cli/Model/model.dart';
import 'package:intl/intl.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TextEditingController textController = TextEditingController();
  // bool isLoading = false;
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = shopItem;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = shopItem;
    } else {
      results = shopItem
          .where((user) => user["materialname"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFEBEBEB),
      appBar: AppBar(
        title: TextFormField(
          onTap: () {},
          onChanged: (value) => _runFilter(value),
          decoration: const InputDecoration(
            hintText: "Search Ardas Interior",
            border: InputBorder.none,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getMediaQueryHeight(context: context, value: 40),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Recently Viewed"),
            ),
          ),
          Divider(),
          Flexible(
            child: _foundUsers.isNotEmpty
                ? Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.grey.shade300,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 250, // here set custom Height You Want
                      ),
                      itemCount: _foundUsers.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            //  Get.to(SholpScreenView());
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
                                  // height: getMediaQueryHeight(
                                  //     context: context, value: 100),
                                  width: double.infinity,
                                  child: Image.asset(
                                    _foundUsers[index]["materialpic"]
                                        .toString(),
                                    fit: BoxFit.contain,
                                  ),
                                ),

                                Text(
                                  _foundUsers[index]["materialname"].toString(),
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
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
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
                                            width: 2,
                                            color: Color(0xff964b00))),
                                    height: getMediaQueryHeight(
                                        context: context, value: 28),
                                    width: getMediaQueryWidth(
                                        context: context, value: 100),
                                    child: Center(
                                        child: Text(
                                      "976+ options",
                                      style:
                                          TextStyle(color: Color(0xff964b00)),
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
                  )
                : SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/searchnotpics.png",
                          fit: BoxFit.fill,
                        ),
                        // Text(
                        //   'No results found Please try with diffrent search',
                        //   style: TextStyle(fontSize: 18),
                        // ),
                      ],
                    ),
                  ),
            // Expanded(
            //   child: _foundUsers.isNotEmpty
            //       ? ListView.builder(
            //           itemCount: _foundUsers.length,
            //           itemBuilder: (context, index) => Card(
            //             elevation: 1,
            //             margin: const EdgeInsets.symmetric(vertical: 2),
            //             child: ListTile(
            //               leading: CircleAvatar(
            //                 radius: 30.0,
            //                 backgroundImage:
            //                     AssetImage(_foundUsers[index]['materialpic']),
            //                 backgroundColor: Colors.transparent,
            //               ),
            //               title: Text(_foundUsers[index]['materialname']),
            //               subtitle: Text('${_foundUsers[index]["scoreprice"]}'),
            //             ),
            //           ),
            //         )
            //       : const Text(
            //           'No results found Please try with diffrent search',
            //           style: TextStyle(fontSize: 24),
            //         ),
            // ),
          ),
        ],
      ),
    );
  }
}

// class SearchView extends GetView<SearchController> {
//   const SearchView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController textController = TextEditingController();

//     List<Map<String, dynamic>> _foundUsers = [];
//     @override

//     // This function is called whenever the text field changes
//     void _runFilter(String enteredKeyword) {
//       List<Map<String, dynamic>> results = [];
//       if (enteredKeyword.isEmpty) {
//         // if the search field is empty or only contains white-space, we'll display all users
//         results = shopItem;
//       } else {
//         results = shopItem
//             .where((user) => user["materialname"]
//                 .toLowerCase()
//                 .contains(enteredKeyword.toLowerCase()))
//             .toList();
//         // we use the toLowerCase() method to make it case-insensitive
//       }

//       // Refresh the UI
//       // setState(() {
//       //   _foundUsers = results;
//       // });
//     }

//     return Scaffold(
//       // backgroundColor: Color(0xFFEBEBEB),
//       appBar: AppBar(
//         title: TextFormField(
//           onTap: () {},
//           onChanged: (value) => _runFilter(value),
//           decoration: const InputDecoration(
//             hintText: "Search Ardas Interior",
//             border: InputBorder.none,
//           ),
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: getMediaQueryHeight(context: context, value: 40),
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Text("Recently Viewed"),
//             ),
//           ),
//           Divider(),
//           Flexible(
//             child: _foundUsers.isNotEmpty
//                 ? Container(
//                     padding: EdgeInsets.all(10),
//                     color: Colors.grey.shade300,
//                     child: GridView.builder(
//                       gridDelegate:
//                           const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                         crossAxisSpacing: 10,
//                         mainAxisSpacing: 10,
//                         mainAxisExtent: 200, // here set custom Height You Want
//                       ),
//                       itemCount: _foundUsers.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         return Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             color: Colors.white,
//                           ),
//                           child: Stack(
//                             children: [
//                               Column(
//                                 children: [
//                                   SizedBox(
//                                     height: getMediaQueryHeight(
//                                         context: context, value: 120),
//                                     width: double.infinity,
//                                     child: Image.asset(
//                                       _foundUsers[index]["materialpic"]
//                                           .toString(),
//                                       fit: BoxFit.fill,
//                                     ),
//                                   ),
//                                   Divider(
//                                     thickness: 2,
//                                   ),
//                                   Padding(
//                                     padding:
//                                         EdgeInsets.only(top: 10.0, bottom: 5),
//                                     child: Text(
//                                       _foundUsers[index]["materialname"]
//                                           .toString(),
//                                     ),
//                                   ),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         "Starting  ",
//                                         style: TextStyle(fontSize: 14),
//                                       ),
//                                       Text(
//                                         NumberFormat.simpleCurrency(
//                                                 locale: 'hi-IN',
//                                                 decimalDigits: 0)
//                                             .format(5552522)
//                                             .toString(),
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold),
//                                       )
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               Positioned(
//                                 top: 110,
//                                 left: 30,
//                                 child: Container(
//                                     decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         border: Border.all(width: 2)),
//                                     height: getMediaQueryHeight(
//                                         context: context, value: 28),
//                                     width: getMediaQueryWidth(
//                                         context: context, value: 100),
//                                     child: Center(child: Text("976+ options"))),
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                   )
//                 : SingleChildScrollView(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/searchnotpics.png",
//                           fit: BoxFit.fill,
//                         ),
//                       ],
//                     ),
//                   ),
//             // Expanded(
//             //   child: _foundUsers.isNotEmpty
//             //       ? ListView.builder(
//             //           itemCount: _foundUsers.length,
//             //           itemBuilder: (context, index) => Card(
//             //             elevation: 1,
//             //             margin: const EdgeInsets.symmetric(vertical: 2),
//             //             child: ListTile(
//             //               leading: CircleAvatar(
//             //                 radius: 30.0,
//             //                 backgroundImage:
//             //                     AssetImage(_foundUsers[index]['materialpic']),
//             //                 backgroundColor: Colors.transparent,
//             //               ),
//             //               title: Text(_foundUsers[index]['materialname']),
//             //               subtitle: Text('${_foundUsers[index]["scoreprice"]}'),
//             //             ),
//             //           ),
//             //         )
//             //       : const Text(
//             //           'No results found Please try with diffrent search',
//             //           style: TextStyle(fontSize: 24),
//             //         ),
//             // ),
//           ),
//         ],
//       ),
//     );
//   }
// }
