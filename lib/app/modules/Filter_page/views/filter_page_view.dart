import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Custom_widget/container_heigh.dart';
import '../controllers/filter_page_controller.dart';

class FilterPageView extends StatefulWidget {
  const FilterPageView({Key? key}) : super(key: key);

  @override
  State<FilterPageView> createState() => _FilterPageViewState();
}

class _FilterPageViewState extends State<FilterPageView> {
  @override
  Widget build(BuildContext context) {
    BestTutorSite _site = BestTutorSite.recommended;
    RangeLabels labels = RangeLabels('1', "100");
    FilterPageController controller = Get.put(FilterPageController());
    String? gender;
    RangeValues values = RangeValues(1, 100);
    // RangeLabels labels =RangeLabels('1', "100");
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomSheet: BottomAppBar(
          elevation: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: getMediaQueryHeight(context: context, value: 55),
                width: MediaQuery.of(context).size.width / 2,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "6,372",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text("product found")
                  ],
                )),
                color: Color(0xFFE7E2E2),
                // onPressed: () {
                //   Get.to(ShopItemView());
                // },
              ),
              Container(
                height: getMediaQueryHeight(context: context, value: 55),
                width: MediaQuery.of(context).size.width / 2,
                child: Center(
                    child: Text(
                  "Apply",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
                color: Color(0xFFFF5252),
                // onPressed: () {
                //   Get.to(ShopItemView());
                // },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("User Login"),
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                child: Container(child: Text("SHORT BY")),
              ),
              Tab(
                child: Container(child: Text("FILTER BY")),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Radio(
                          activeColor: Colors.redAccent,
                          value: BestTutorSite.recommended,
                          groupValue: _site,
                          onChanged: (BestTutorSite? value) {
                            setState(() {
                              _site = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price: Low to High',
                          style: TextStyle(fontSize: 18),
                        ),
                        Radio(
                          activeColor: Colors.black,
                          value: BestTutorSite.lowtohigh,
                          groupValue: _site,
                          onChanged: (BestTutorSite? value) {
                            setState(() {
                              _site = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price:High to Low',
                          style: TextStyle(fontSize: 18),
                        ),
                        Radio(
                          activeColor: Colors.black,
                          value: BestTutorSite.hightolow,
                          groupValue: _site,
                          onChanged: (BestTutorSite? value) {
                            setState(() {
                              _site = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New Arrivals',
                          style: TextStyle(fontSize: 18),
                        ),
                        Radio(
                          activeColor: Colors.black,
                          value: BestTutorSite.arrivals,
                          groupValue: _site,
                          onChanged: (BestTutorSite? value) {
                            setState(() {
                              _site = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount',
                          style: TextStyle(fontSize: 18),
                        ),
                        Radio(
                          activeColor: Colors.black,
                          value: BestTutorSite.discount,
                          groupValue: _site,
                          onChanged: (BestTutorSite? value) {
                            setState(() {
                              _site = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey),
                  ],
                ),
              ),
            ),

            // 2nd Tab Bar

            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Card(
                      child: ExpansionTile(
                        textColor: Colors.red,
                        iconColor: Colors.red,
                        title: Center(child: Text("DEAL ZONE")),
                        childrenPadding: EdgeInsets.zero,
                        children: [
                          RangeSlider(
                              divisions: 3,
                              activeColor: Colors.red[700],
                              inactiveColor: Colors.red[300],
                              min: 1,
                              max: 100,
                              values: values,
                              labels: labels,
                              onChanged: (value) {
                                print(
                                    "START: ${value.start}, End: ${value.end}");

                                setState(() {
                                  values = value;
                                  labels = RangeLabels(
                                      "${value.start.toInt().toString()}\$",
                                      "${value.start.toInt().toString()}\$");
                                });
                              }),
                        ],
                      ),
                    ),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      separatorBuilder: (context, index) => SizedBox(),
                      itemBuilder: ((context, index) {
                        bool isChecked = false;
                        return Card(
                          child: ExpansionTile(
                            textColor: Colors.red,
                            iconColor: Color(0xFFF44336),
                            title: Center(child: Text("DEAL ZONE")),
                            childrenPadding: EdgeInsets.zero,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.greenAccent,
                                        activeColor: Colors.red,
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            var isChecked = value;
                                            print(
                                                isChecked); // How did value change to true at this point?
                                          });
                                        },
                                      ),
                                      Text("By Urban Ladder"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.greenAccent,
                                        activeColor: Colors.red,
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            var isChecked = value;
                                            print(
                                                isChecked); // How did value change to true at this point?
                                          });
                                        },
                                      ),
                                      Text("By Shop"),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.greenAccent,
                                        activeColor: Colors.red,
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            var isChecked = value;
                                            print(
                                                isChecked); // How did value change to true at this point?
                                          });
                                        },
                                      ),
                                      Text("By Urban Ladder"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.greenAccent,
                                        activeColor: Colors.red,
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            var isChecked = value;
                                            print(
                                                isChecked); // How did value change to true at this point?
                                          });
                                        },
                                      ),
                                      Text("By Shop"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum BestTutorSite { recommended, lowtohigh, hightolow, arrivals, discount }
