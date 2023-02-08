import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_cli/Custom_widget/container_heigh.dart';
import 'package:get_cli/Custom_widget/filter.dart';
import 'package:get_cli/app/modules/Filter_page/views/filter_page_view.dart';
import 'package:get_cli/app/modules/HelpPage/views/help_page_view.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 211, 209, 209),
      width: getMediaQueryWidth(context: context, value: 280),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                items: [
                  //1st Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/Slidshow.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/Slideshow2.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/Slideshow3.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/Slideshow4.jpg"),
                        // image: AssetsImage(
                        //     "assets/Slideshow4.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: getMediaQueryHeight(context: context, value: 140),
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.995,
                ),
              ),
              ListTile(
                title: Text("HOME"),
              ),

              // ...........................DEAL ZONE..............................
              Divider(
                height: 0,
                thickness: 2,
              ),
              ExpansionTile(
                textColor: Colors.redAccent,
                title: Text("DEAL ZONE"),
                childrenPadding: EdgeInsets.zero,
                iconColor: Colors.redAccent,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color(0xFFF5F1F1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpansionTile(
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding:
                                          EdgeInsets.only(right: 50, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title: const Text('TOP DEALS'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "START OF JANUARY",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "DAILY DEALS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "WEEKDAY SPECIAL DEALS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "STUNNING DEALS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "CLEARANCE SALES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "TOP 100 LIGHTING",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "ALL PRODUCTS ON SALE",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "ALL DECOR ON SALE",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                height: 0,
                thickness: 2,
              ),
              ExpansionTile(
                textColor: Colors.redAccent,
                title: Text("LIVING"),
                childrenPadding: EdgeInsets.zero,
                iconColor: Colors.redAccent,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color(0xFFF5F1F1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpansionTile(
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding:
                                          EdgeInsets.only(right: 50, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title: const Text('SEATING & CHAIRS'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "LOUNGE CHAIRS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "ACCENT CHAIRS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "RECLINERS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "SOFA CUM BED",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "OTTOMANS & STOOLS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "BEAN BAGS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "BENCHES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "BAR STOOLS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "ROCKING CHAIRS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "GAMING CHAIRS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                      // collapsedTextColor: Colors.green,
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding:
                                          EdgeInsets.only(right: 50, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title: const Text('TABLES'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "COFFEE TABLES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "SIDE & END TABLES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "CONSOLE TABLES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "NESTED TABLES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "COFFEE TABLES SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                    textColor: Colors.black,
                                    iconColor: Colors.black,
                                    childrenPadding:
                                        EdgeInsets.only(right: 50, bottom: 0),
                                    tilePadding:
                                        EdgeInsets.only(left: 20, bottom: 0),
                                    title: Text('LIVING STORAGE'),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "LIVING STORAGE",
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "TV UNITS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "BOOKSHELVES",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "SHOE RACKS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "PRAYER UNITS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "SHOWCASES",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "WALL SHELVES",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "ENTERWAY & FOYER",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "CORNER STORAGE",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "ROOM DIVIDER",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "LIVING ROOM SETS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

// ...........................SOFA & RECLINERS..............................

              Divider(
                thickness: 2,
                height: 0,
              ),
              ExpansionTile(
                textColor: Colors.red,
                title: Text("SOFAS & RECLINERS"),
                iconColor: Colors.redAccent,
                childrenPadding: EdgeInsets.zero,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color(0xFFF5F1F1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpansionTile(
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding:
                                          EdgeInsets.only(right: 50, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title: const Text('SOFAS'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "ALL SOFAS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "FABRIC SOFA SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "WOODEN SOFA SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "LEATHER SOFA SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "LEATHERETTE SOFA SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "L SHAPED SOFA SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "DIWANS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "LOVESEATS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                      // collapsedTextColor: Colors.green,
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding:
                                          EdgeInsets.only(right: 50, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title: const Text('RECLINERS'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "ALL RECLINERS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "1 SEATER RECLINERS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "2 SEATER RECLINERS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "3 SEATER RECLINERS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "FABRIC RECLINERS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "LEATHERTTE RECLINERS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "MOTORIZED RECLINERS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "MANUAL RECLINERS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                    textColor: Colors.black,
                                    iconColor: Colors.black,
                                    childrenPadding:
                                        EdgeInsets.only(right: 50, bottom: 0),
                                    tilePadding:
                                        EdgeInsets.only(left: 20, bottom: 0),
                                    title: Text('SOFA BED'),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "ALL SOFA BEDS",
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "FABRIC SOFA BEDS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "WOODEN SOFA BEDS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "FUTONS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                    textColor: Colors.black,
                                    iconColor: Colors.black,
                                    childrenPadding:
                                        EdgeInsets.only(right: 50, bottom: 0),
                                    tilePadding:
                                        EdgeInsets.only(left: 20, bottom: 0),
                                    title: Text('SEATING & CHAIRS'),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "LOUNGE CHAIRS",
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "ACCENT CHAIRS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "OTTOMANS & STOOLS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "BEAN BAGS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "BENCHES",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "BAR STOOLS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "ROCKING CHAIRS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "GAMING CHAIRS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // ...........................BEDROOM & MATTRESSES..............................
              Divider(
                height: 0,
                thickness: 2,
              ),
              ExpansionTile(
                textColor: Colors.red,
                title: Text("BEDROOM & MATTRESSES"),
                childrenPadding: EdgeInsets.zero,
                iconColor: Colors.redAccent,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color(0xFFF5F1F1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpansionTile(
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding:
                                          EdgeInsets.only(right: 50, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title: const Text('BEDS'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "ALL BEDS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "BEDS WITH STORAGE",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "BEDS WITHOUT STORAGE",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "KING SIZE BEDS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "SINGLE BEDS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "DOUBLE BEDS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "BED -MATTRESS SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "UPHOLSTERED BEDS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "TRUNDLE BEDS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "SOFA CUM BEDS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "BEDROOM SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                      // collapsedTextColor: Colors.green,
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding:
                                          EdgeInsets.only(right: 50, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title: const Text('MATTRESSES'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "ALL MATTRESSES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "KING SIZE MATTRESSES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "QUEEN SIZE MATTRESSES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "SINGLE BED MATTRESSES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "DOUBLE BED MATTRESSES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "MATTRESS BY MATERIAL",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "MATTRESS BY BRAND",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "MATTRESS BY RANGE",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "MATTRESS BY FIRMNESS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "MATTRESS BY PROTECTORS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "PILLOWS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                    textColor: Colors.black,
                                    iconColor: Colors.black,
                                    childrenPadding:
                                        EdgeInsets.only(right: 50, bottom: 0),
                                    tilePadding:
                                        EdgeInsets.only(left: 20, bottom: 0),
                                    title: Text('STORAGE & ACCESSORIES'),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "WARDROBES",
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "BEDSIDE OF DRAWERS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "CHEST OF DRAWERS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "DRAWERS & MIRRORS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "MODULAR WARDROBES",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "BEDROOM BENCHES",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "BEDROOM CHAIRS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "PLASTIC STORAGE",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                    textColor: Colors.black,
                                    iconColor: Colors.black,
                                    childrenPadding:
                                        EdgeInsets.only(right: 50, bottom: 0),
                                    tilePadding:
                                        EdgeInsets.only(left: 20, bottom: 0),
                                    title: Text('KIDS ROOM'),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "KIDS BEDS",
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "KIDS TABLES",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "BUNK BEDS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "KIDS SEATING",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "KIDS DECOR",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //.......................DINING.......................
              Divider(
                height: 0,
                thickness: 2,
              ),
              ExpansionTile(
                textColor: Colors.red,
                iconColor: Colors.redAccent,
                title: Text("DINING"),
                childrenPadding: EdgeInsets.zero,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color(0xFFF5F1F1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpansionTile(
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding:
                                          EdgeInsets.only(right: 50, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title:
                                          const Text('DINING TABLES & CHAIRS'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "6 SEATER DINING TABLES SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "4 SEATER DINING TABLES SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "2 & 3 SEATER DINING TABLES SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "8 SEATER DINING TABLES SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "ALL DINING TABLES SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "DINING TABLES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "DINING CHAIRS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "DINING BENCHES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "FOLDING DINING TABLES SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "CHAIR PADS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                      // collapsedTextColor: Colors.green,
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding:
                                          EdgeInsets.only(right: 50, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title:
                                          const Text('STORAGE & BAR FURNITURE'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "CROCKERY UNITS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "KITCHEN CABINE & RACKS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "BAR STOOLS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "BAR CABINETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "MODULAR KITCHEN",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //............................................STORAGE....................................
              Divider(
                height: 0,
                thickness: 2,
              ),
              ExpansionTile(
                textColor: Colors.red,
                title: Text("STORAGE"),
                iconColor: Colors.redAccent,
                childrenPadding: EdgeInsets.zero,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color(0xFFF5F1F1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpansionTile(
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding:
                                          EdgeInsets.only(right: 50, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title: const Text('LIVING STORAGE'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "SHOE RACKS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "BOOKSHELVES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "SHOWCASES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "PRAYER UNITS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "TV UNITS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "WALL SHELVES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "ENTRYWAY & FOYER",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "LIVING ROOM SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                      // collapsedTextColor: Colors.green,
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding:
                                          EdgeInsets.only(right: 50, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title: const Text('BEDROOM STORAGE'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "CUPBOARDS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "CHEST OF DRAWERS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "BEDSIDE TABLES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "DRESSERS & MIRRORS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "STORAGE CHESTS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "MODULAR WARDRDROBES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                    textColor: Colors.black,
                                    iconColor: Colors.black,
                                    childrenPadding:
                                        EdgeInsets.only(right: 50, bottom: 0),
                                    tilePadding:
                                        EdgeInsets.only(left: 20, bottom: 0),
                                    title: Text('DINING STORAGE'),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "CROCKERY UNITS",
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "KITCHEN CABINETS & RACKS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "BAR CABINETS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "DRAWERS & MIRRORS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "MODULAR KITCHEN",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                    textColor: Colors.black,
                                    iconColor: Colors.black,
                                    childrenPadding:
                                        EdgeInsets.only(right: 50, bottom: 0),
                                    tilePadding:
                                        EdgeInsets.only(left: 20, bottom: 0),
                                    title: Text('KIDS STORAGE'),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "KIDS BOOKSHELVES",
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "KIDS BEDSIDE TABLES",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "KIDS STORAGE CABINETS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "KIDS CHEST OF DRAWERS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "KIDS WARDROBES",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

//...............................STUDY.......................................
              Divider(
                height: 0,
                thickness: 2,
              ),
              ExpansionTile(
                textColor: Colors.red,
                iconColor: Colors.redAccent,
                title: Text("STUDY"),
                childrenPadding: EdgeInsets.zero,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color(0xFFF5F1F1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpansionTile(
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding:
                                          EdgeInsets.only(right: 50, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title: const Text('STUDY TABLES'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "STUDY TABLES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "COMPUTER TABLES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "OFFICE TABLES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "SOLID WOOD STUDY TABLES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "LAPTOP TABLES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "STUDY SETS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                      // collapsedTextColor: Colors.green,
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding:
                                          EdgeInsets.only(right: 50, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title: const Text('STUDY CHAIRS'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "STUDY CHAIRS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "OFFICE CHAIRS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "ERGONOMIC STUDY CHAIRS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "ACCENT STUDY CHAIRS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "GAMING CHAIRS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                      // collapsedTextColor: Colors.green,
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding: EdgeInsets.only(
                                          right: 135, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title: Text('STORAGE'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "BOOK SHELVES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "WALL SHELVES",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                  Divider(
                                    height: 0,
                                    thickness: 2,
                                  ),
                                  ExpansionTile(
                                      // collapsedTextColor: Colors.green,
                                      textColor: Colors.black,
                                      iconColor: Colors.black,
                                      childrenPadding: EdgeInsets.only(
                                          right: 135, bottom: 0),
                                      tilePadding:
                                          EdgeInsets.only(left: 20, bottom: 0),
                                      title: Text('DECOR'),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "STUDY LAMPS",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                      // data.map((data) {
                                      //   return ListTile(title: Text(data));
                                      // }).toList(),
                                      ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                height: 0,
                thickness: 2,
              ),
              ListTile(
                selectedColor: Colors.redAccent,
                selectedTileColor: Colors.redAccent,
                onTap: () {
                  Get.to(HelpPageView());
                },
                title: Text("Help"),
              ),
              Divider(
                height: 0,
                thickness: 2,
              ),
              Divider(
                height: 0,
                thickness: 2,
              ),
              // ListTile(
              //   onTap: () {
              //     Get.to(FilterPageView());
              //   },
              //   title: Text("Filter"),
              // ),
              // Divider(
              //   height: 0,
              //   thickness: 2,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
