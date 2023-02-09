import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get_cli/Custom_widget/Responsive/appResponsive.dart';
import 'package:get_cli/Custom_widget/container_heigh.dart';
import 'package:get_cli/app/modules/Blogs/views/blogs_view.dart';
import 'package:get_cli/app/modules/Explore/views/explore_view.dart';
import 'package:get_cli/app/modules/Notification/views/notification_view.dart';
import 'package:get_cli/app/modules/Order_Track/views/order_track_view.dart';
import 'package:get_cli/app/modules/Reviews/views/reviews_view.dart';
import 'package:get_cli/app/modules/Search/views/search_view.dart';
import 'package:get_cli/app/modules/SholpScreen/ShopItem/views/shop_item_view.dart';
import 'package:get_cli/app/modules/home/views/home_view.dart';
// import 'package:google_fonts/google_fonts.dart';
import '../../../../Custom_widget/myDrawer.dart';
import '../../HomePageResponsive/views/home_page_responsive_view.dart';
import '../../login/views/login_view.dart';
import '../controllers/main_screen_controller.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Exit App'),
              content: Text('Do you want to exit an App?'),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  //return false when click on "NO"
                  child: Text('No'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text('Yes'),
                ),
              ],
            ),
          ) ??
          false;
    }

    return WillPopScope(
      onWillPop: showExitPopup,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: const Color(0xffF5F5F5),

          //  Drawer

          drawer: MyDrawer(),

// Mobile View

          body: Responsive(
            mobile: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                      SliverAppBar(
                        bottom: PreferredSize(
                          // ignore: sort_child_properties_last
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: getMediaQueryHeight(
                                    context: context, value: 40),
                                decoration: BoxDecoration(
                                    color: const Color(0xffF6F5F6),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 0.05,
                                        blurRadius: 1,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(9)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: getMediaQueryWidth(
                                          context: context, value: 15),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Center(
                                        child: TextFormField(
                                          onTap: (() {
                                            Get.to(SearchView());
                                          }),
                                          readOnly: true,
                                          keyboardType: TextInputType.text,
                                          decoration: const InputDecoration(
                                            // hintStyle: GoogleFonts.poppins(
                                            //     color: Color(0xff707070),
                                            //     fontSize: 14,
                                            //     fontWeight: FontWeight.normal),
                                            border: InputBorder.none,
                                            hintText: "Search Ardas Interior",
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Icon(
                                        Icons.search,
                                        color: Color(0xff707070),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: getMediaQueryHeight(
                                    context: context, value: 2),
                              ),
                              const TabBar(
                                  isScrollable: true,
                                  indicatorColor: Color(0xff0000000),
                                  indicatorWeight: 3,
                                  tabs: [
                                    Tab(
                                      text: 'SHOWCASE',
                                    ),
                                    Tab(
                                      text: 'EXPLORE',
                                    ),
                                    Tab(
                                      text: 'SALES',
                                    ),
                                    Tab(
                                      text: 'LETS PRODUCT',
                                    ),
                                  ])
                            ],
                          ),
                          preferredSize: Size.fromHeight(85),
                        ),
                        elevation: 4,
                        // toolbarHeight: 60.2,
                        // shape: const RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.only(
                        //       bottomRight: Radius.circular(10),
                        //       bottomLeft: Radius.circular(10)),
                        // ),

                        floating: true,
                        snap: true,
                        actions: [
                          Image.asset("assets/ardaslogo.jpg",
                              width: MediaQuery.of(context).size.width * 0.35),
                          SizedBox(
                            width:
                                getMediaQueryWidth(context: context, value: 25),
                          ),
                          IconButton(
                            onPressed: () {
                              Get.to(NotificationView());
                            },
                            icon: const Icon(
                              FontAwesomeIcons.bell,
                              size: 20,
                            ),
                          ),
                          IconButton(
                              visualDensity: const VisualDensity(
                                  horizontal: -4.0, vertical: -4.0),
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Get.to(OrderTrackView());
                              },
                              icon: Icon(
                                FontAwesomeIcons.busSimple,
                                size: 20,
                              )),
                          IconButton(
                              onPressed: () {
                                Get.to(ShopItemView());
                              },
                              icon: Icon(
                                FontAwesomeIcons.cartShopping,
                                size: 20,
                              )),
                          IconButton(
                              visualDensity: const VisualDensity(
                                  horizontal: -4.0, vertical: -4.0),
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Get.to(LoginView());
                              },
                              icon: Icon(
                                FontAwesomeIcons.user,
                                size: 20,
                              )),
                        ],
                      )
                    ],
                body: TabBarView(
                  children: [
                    HomePageResponsiveView(),
                    ExploreView(),
                    BlogsView(),
                    ReviewsView()
                    // Explore_screen(),
                    // Blogs_Screen(),
                    // Reviews_Screen()
                  ],
                )
                //
                ),

//.......................Table View........................

            tablet: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                      SliverAppBar(
                        bottom: PreferredSize(
                          // ignore: sort_child_properties_last
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: getMediaQueryHeight(
                                      context: context, value: 80),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF6F5F6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          spreadRadius: 0.05,
                                          blurRadius: 1,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(9)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: getMediaQueryWidth(
                                            context: context, value: 15),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Center(
                                          child: TextFormField(
                                            onTap: (() {
                                              Get.to(SearchView());
                                            }),
                                            readOnly: true,
                                            keyboardType: TextInputType.text,
                                            decoration: const InputDecoration(
                                              // hintStyle: GoogleFonts.poppins(
                                              //     color: Color(0xff707070),
                                              //     fontSize: 14,
                                              //     fontWeight: FontWeight.normal),
                                              border: InputBorder.none,
                                              hintText: "Search Ardas Interior",
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Icon(
                                          Icons.search,
                                          color: Color(0xff707070),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getMediaQueryHeight(
                                      context: context, value: 2),
                                ),
                                const TabBar(
                                    isScrollable: true,
                                    indicatorColor: Color(0xff0000000),
                                    indicatorWeight: 3,
                                    tabs: [
                                      Tab(
                                        text: 'SHOWCASE',
                                      ),
                                      Tab(
                                        text: 'EXPLORE',
                                      ),
                                      Tab(
                                        text: 'SALES',
                                      ),
                                      Tab(
                                        text: 'LETS PRODUCT',
                                      ),
                                    ])
                              ],
                            ),
                          ),
                          preferredSize: Size.fromHeight(85),
                        ),
                        elevation: 4,
                        // toolbarHeight: 60.2,
                        // shape: const RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.only(
                        //       bottomRight: Radius.circular(10),
                        //       bottomLeft: Radius.circular(10)),
                        // ),

                        floating: true,
                        snap: true,
                        actions: [
                          Image.asset("assets/ardaslogo.jpg",
                              width: MediaQuery.of(context).size.width * 0.30),
                          SizedBox(
                            width:
                                getMediaQueryWidth(context: context, value: 15),
                          ),
                          IconButton(
                            onPressed: () {
                              Get.to(NotificationView());
                            },
                            icon: const Icon(
                              FontAwesomeIcons.bell,
                              size: 20,
                            ),
                          ),
                          IconButton(
                              visualDensity: const VisualDensity(
                                  horizontal: 3, vertical: 3),
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Get.to(OrderTrackView());
                              },
                              icon: Icon(
                                FontAwesomeIcons.busSimple,
                                size: 20,
                              )),
                          IconButton(
                              onPressed: () {
                                Get.to(ShopItemView());
                              },
                              icon: Icon(
                                FontAwesomeIcons.cartShopping,
                                size: 20,
                              )),
                          IconButton(
                              visualDensity: const VisualDensity(
                                  horizontal: 3, vertical: 3),
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Get.to(LoginView());
                              },
                              icon: Icon(
                                FontAwesomeIcons.user,
                                size: 20,
                              )),
                        ],
                      )
                    ],
                body: TabBarView(
                  children: [
                    HomePageResponsiveView(),
                    ExploreView(),
                    BlogsView(),
                    ReviewsView()
                    // Explore_screen(),
                    // Blogs_Screen(),
                    // Reviews_Screen()
                  ],
                )
                //
                ),
          ),
        ),
      ),
    );
  }
}

// class MainScreenView extends GetView<MainScreenController> {
//   const MainScreenView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // var data = ['data1', 'data2', 'data3', 'data4', 'data5', 'data6', 'data7'];
//     var _controller = ScrollController();
//     ThemeData theme = Theme.of(context);
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         backgroundColor: const Color(0xffF5F5F5),

//         //  Drawer

//         drawer: MyDrawer(),
//         // Drawer(
//         //   child: Stack(
//         //     children: <Widget>[
//         //       UserAccountsDrawerHeader(
//         //         decoration: BoxDecoration(color: Colors.indigo),
//         //         accountEmail: null,
//         //         accountName: null,
//         //       ),
//         //       Positioned(
//         //         top: 120.0,
//         //         left: 0.0,
//         //         right: 0.0,
//         //         child: Theme(
//         //           data: theme.copyWith(
//         //             textTheme: theme.textTheme.copyWith(),
//         //             accentColor: Colors.white,
//         //             unselectedWidgetColor: Colors.grey,
//         //             iconTheme: theme.iconTheme.copyWith(color: Colors.white),
//         //             dividerColor: Colors.transparent,
//         //           ),
//         //           child: ExpansionTile(
//         //             title: Align(
//         //               heightFactor: 0.4,
//         //               alignment: Alignment.bottomCenter,
//         //               child: UserAccountsDrawerHeader(
//         //                 decoration: BoxDecoration(color: Colors.transparent),
//         //                 accountName: Text("Mohamed Ali"),
//         //                 accountEmail: Text("mohamed.ali6996@hotmail.com"),
//         //                 currentAccountPicture: CircleAvatar(
//         //                   child: Text("M"),
//         //                   backgroundColor: Colors.white,
//         //                 ),
//         //               ),
//         //             ),
//         //             children: <Widget>[
//         //               ListTile(
//         //                 title: Text("page one"),
//         //                 trailing: Icon(Icons.android),
//         //                 onTap: () => {},
//         //               ),
//         //               ListTile(
//         //                 title: Text("page two"),
//         //                 trailing: Icon(Icons.accessible),
//         //                 onTap: () => {},
//         //               ),
//         //               Container(
//         //                 height: 1.0,
//         //                 color: Color(0xFFDDDDDD),
//         //               ),
//         //               ListTile(
//         //                 title: Text("Log out"),
//         //                 trailing: Icon(Icons.exit_to_app),
//         //               ),
//         //             ],
//         //             initiallyExpanded: false,
//         //           ),
//         //         ),
//         //       ),
//         //     ],
//         //   ),
//         // ), //  Drawer(
//         //   //   width: MediaQuery.of(context).size.width * 010,
//         //   width: getMediaQueryWidth(context: context, value: 300),
//         //   backgroundColor: const Color(0xffFFFFFF),
//         //   child: SingleChildScrollView(
//         //     child: Column(children: [
//         //       Container(
//         //         height: getMediaQueryHeight(context: context, value: 180),
//         //         width: double.infinity,
//         //         color: Color(0xffFFFFFF),
//         //         child: const Padding(
//         //           padding: EdgeInsets.all(20.0),
//         //           // child: Image.asset(
//         //           //   "assets/trygonlogo.png",
//         //           // ),
//         //         ),
//         //       ),
//         //       const Divider(
//         //         thickness: 3,
//         //       ),
//         //       SizedBox(
//         //         height: getMediaQueryHeight(context: context, value: 610),
//         //         child: ListView(
//         //           controller: _controller,
//         //           shrinkWrap: true,
//         //           children: [
//         //             ListTile(
//         //               title: const Text(
//         //                 'Shopping',
//         //                 style:
//         //                     TextStyle(color: Color(0xff000000), fontSize: 16),
//         //               ),
//         //               onTap: () {
//         //                 Get.to(SholpScreenView());
//         //               },
//         //               trailing: const Icon(
//         //                 FontAwesomeIcons.angleRight,
//         //                 color: Color(0xff000000),
//         //               ),
//         //             ),
//         //             ListTile(
//         //               title: const Text(
//         //                 'Sofa',
//         //                 style:
//         //                     TextStyle(color: Color(0xff000000), fontSize: 16),
//         //               ),
//         //               onTap: () {},
//         //               trailing: const Icon(
//         //                 FontAwesomeIcons.angleRight,
//         //                 color: Color(0xff000000),
//         //               ),
//         //             ),
//         //             ExpansionTile(
//         //               title: const Text(
//         //                 'SOFAS & RECLINERS',
//         //                 style:
//         //                     TextStyle(color: Color(0xff000000), fontSize: 16),
//         //               ),
//         //               children: [
//         //                 const ListTile(
//         //                   title: Text(
//         //                     'DEAL ZONE',
//         //                     style: TextStyle(
//         //                         color: Color(0xff000000), fontSize: 12),
//         //                   ),
//         //                 ),
//         //                 const ListTile(
//         //                   title: Text(
//         //                     'DEAL ZONE',
//         //                     style: TextStyle(
//         //                         color: Color(0xff000000), fontSize: 12),
//         //                   ),
//         //                 ),
//         //                 const ListTile(
//         //                   title: Text(
//         //                     'DEAL ZONE',
//         //                     style: TextStyle(
//         //                         color: Color(0xff000000), fontSize: 12),
//         //                   ),
//         //                 ),
//         //                 Padding(
//         //                   padding: const EdgeInsets.only(left: 8.0),
//         //                   child: Column(
//         //                     crossAxisAlignment: CrossAxisAlignment.start,
//         //                     mainAxisAlignment: MainAxisAlignment.start,
//         //                     children: const [],
//         //                   ),
//         //                 ),
//         //                 Text("TOP DEALS"),
//         //                 Text("TOP DEALS"),
//         //               ],
//         //               // trailing: Icon(
//         //               //   FontAwesomeIcons.angleRight,
//         //               //   color: Color(0xff000000),
//         //               // ),
//         //             ),
//         //             ListTile(
//         //               title: const Text(
//         //                 'Search',
//         //                 style:
//         //                     TextStyle(color: Color(0xff000000), fontSize: 16),
//         //               ),
//         //               onTap: () {},
//         //               trailing: const Icon(
//         //                 FontAwesomeIcons.angleRight,
//         //                 color: Color(0xff000000),
//         //               ),
//         //             ),
//         //             ListTile(
//         //               title: const Text(
//         //                 'Shopping',
//         //                 style:
//         //                     TextStyle(color: Color(0xff000000), fontSize: 16),
//         //               ),
//         //               onTap: () {
//         //                 // Navigator.push(
//         //                 //     context,
//         //                 //     MaterialPageRoute(
//         //                 //         builder: (context) => ShoppingPageScreen()));
//         //               },
//         //               trailing: const Icon(
//         //                 FontAwesomeIcons.angleRight,
//         //                 color: Color(0xff000000),
//         //               ),
//         //             ),
//         //             ListTile(
//         //               title: const Text(
//         //                 'STORAGE',
//         //                 style:
//         //                     TextStyle(color: Color(0xff000000), fontSize: 16),
//         //               ),
//         //               onTap: () {},
//         //               trailing: const Icon(
//         //                 FontAwesomeIcons.angleRight,
//         //                 color: Color(0xff000000),
//         //               ),
//         //             ),
//         //             ListTile(
//         //               title: const Text(
//         //                 'STUDY',
//         //                 style:
//         //                     TextStyle(color: Color(0xff000000), fontSize: 16),
//         //               ),
//         //               onTap: () {},
//         //               trailing: const Icon(
//         //                 FontAwesomeIcons.angleRight,
//         //                 color: Color(0xff000000),
//         //               ),
//         //             ),
//         //             ListTile(
//         //               title: const Text(
//         //                 'LIGHTING & DECOR',
//         //                 style:
//         //                     TextStyle(color: Color(0xff000000), fontSize: 16),
//         //               ),
//         //               onTap: () {},
//         //               trailing: const Icon(
//         //                 FontAwesomeIcons.angleRight,
//         //                 color: Color(0xff000000),
//         //               ),
//         //             ),
//         //             ListTile(
//         //               title: const Text(
//         //                 'OUTDOOR',
//         //                 style:
//         //                     TextStyle(color: Color(0xff000000), fontSize: 16),
//         //               ),
//         //               onTap: () {},
//         //               trailing: const Icon(
//         //                 FontAwesomeIcons.angleRight,
//         //                 color: Color(0xff000000),
//         //               ),
//         //             ),
//         //           ],
//         //         ),
//         //       ),
//         //     ]),
//         //   ),
//         // ),
//         body: NestedScrollView(
//             headerSliverBuilder: (context, innerBoxIsScrolled) => [
//                   SliverAppBar(
//                     bottom: PreferredSize(
//                       // ignore: sort_child_properties_last
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 10, right: 8),
//                         child: Column(
//                           children: [
//                             Container(
//                               width: double.infinity,
//                               height: getMediaQueryHeight(
//                                   context: context, value: 38),
//                               decoration: BoxDecoration(
//                                   color: const Color(0xffF6F5F6),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.black.withOpacity(0.5),
//                                       spreadRadius: 0.05,
//                                       blurRadius: 1,
//                                     )
//                                   ],
//                                   borderRadius: BorderRadius.circular(9)),
//                               child: Row(
//                                 children: [
//                                   SizedBox(
//                                     width: getMediaQueryWidth(
//                                         context: context, value: 15),
//                                   ),
//                                   Expanded(
//                                     flex: 3,
//                                     child: TextFormField(
//                                       onTap: (() {
//                                         Get.to(SearchView());
//                                       }),
//                                       readOnly: true,
//                                       keyboardType: TextInputType.text,
//                                       decoration: const InputDecoration(
//                                         // hintStyle: GoogleFonts.poppins(
//                                         //     color: Color(0xff707070),
//                                         //     fontSize: 14,
//                                         //     fontWeight: FontWeight.normal),
//                                         border: InputBorder.none,
//                                         hintText: "Search Ardas Interior",
//                                       ),
//                                     ),
//                                   ),
//                                   const Padding(
//                                     padding:
//                                         EdgeInsets.symmetric(horizontal: 15),
//                                     child: Icon(
//                                       Icons.search,
//                                       color: Color(0xff707070),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             SizedBox(
//                               height: getMediaQueryHeight(
//                                   context: context, value: 2),
//                             ),
//                             const TabBar(
//                                 isScrollable: true,
//                                 indicatorColor: Color(0xff0000000),
//                                 indicatorWeight: 3,
//                                 tabs: [
//                                   Tab(
//                                     text: 'SHOWCASE',
//                                   ),
//                                   Tab(
//                                     text: 'EXPLORE',
//                                   ),
//                                   Tab(
//                                     text: 'BLOGS',
//                                   ),
//                                   Tab(
//                                     text: 'REVIEWS',
//                                   ),
//                                 ])
//                           ],
//                         ),
//                       ),
//                       preferredSize: Size.fromHeight(85),
//                     ),
//                     elevation: 4,
//                     // toolbarHeight: 60.2,
//                     // shape: const RoundedRectangleBorder(
//                     //   borderRadius: BorderRadius.only(
//                     //       bottomRight: Radius.circular(10),
//                     //       bottomLeft: Radius.circular(10)),
//                     // ),

//                     floating: true,
//                     snap: true,
//                     actions: [
//                       Image.asset("assets/ardaslogo.jpg",
//                           width: MediaQuery.of(context).size.width * 0.35),
//                       SizedBox(
//                         width: getMediaQueryWidth(context: context, value: 25),
//                       ),
//                       IconButton(
//                         onPressed: () {
//                           Get.to(NotificationView());
//                         },
//                         icon: const Icon(
//                           FontAwesomeIcons.bell,
//                           size: 20,
//                         ),
//                       ),
//                       IconButton(
//                           visualDensity: const VisualDensity(
//                               horizontal: -4.0, vertical: -4.0),
//                           padding: EdgeInsets.zero,
//                           onPressed: () {
//                             Get.to(OrderTrackView());
//                           },
//                           icon: Icon(
//                             FontAwesomeIcons.busSimple,
//                             size: 20,
//                           )),
//                       IconButton(
//                           onPressed: () {
//                             Get.to(ShopItemView());
//                           },
//                           icon: Icon(
//                             FontAwesomeIcons.cartShopping,
//                             size: 20,
//                           )),
//                       IconButton(
//                           visualDensity: const VisualDensity(
//                               horizontal: -4.0, vertical: -4.0),
//                           padding: EdgeInsets.zero,
//                           onPressed: () {
//                             Get.to(LoginView());
//                           },
//                           icon: Icon(
//                             FontAwesomeIcons.user,
//                             size: 20,
//                           )),
//                     ],
//                   )
//                 ],
//             body: TabBarView(
//               children: [
//                 HomeView(),
//                 ExploreView(),
//                 BlogsView(),
//                 ReviewsView()
//                 // Explore_screen(),
//                 // Blogs_Screen(),
//                 // Reviews_Screen()
//               ],
//             )
//             //
//             ),
//       ),
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           const DrawerHeader(
//             decoration: BoxDecoration(
//               color: Colors.green,
//             ),
//             child: Text(
//               'Navigation Drawer',
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.person),
//             title: const Text(' My Profile '),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.book),
//             title: const Text(' My Course '),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.workspace_premium),
//             title: const Text(' Go Premium '),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.video_label),
//             title: const Text(' Saved Videos '),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.edit),
//             title: const Text(' Edit Profile '),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.logout),
//             title: const Text('LogOut'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
