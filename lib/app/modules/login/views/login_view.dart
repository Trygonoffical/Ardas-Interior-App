import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_cli/Custom_widget/container_heigh.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("User Login"),
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                child: Container(child: Text("Login using Password")),
              ),
              Tab(
                child: Container(child: Text("Login using OTP")),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SizedBox(
                              child: Image.asset(
                            "assets/welcome-removebg.png",
                            height: 200,
                            fit: BoxFit.fill,
                          )),
                        ),
                        SizedBox(
                          height:
                              getMediaQueryHeight(context: context, value: 40),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Log in",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        // SizedBox(
                        //   height:
                        //       getMediaQueryHeight(context: context, value: 25),
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "You Will Be Able To Track You Order, Use Wishing & More.",
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: getMediaQueryHeight(context: context, value: 25),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height:
                            getMediaQueryHeight(context: context, value: 45),
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
                              width: 10,
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
                                  hintText: "Mobile Number",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getMediaQueryHeight(context: context, value: 25),
                    ),
                    Card(
                      child: Container(
                        height:
                            getMediaQueryHeight(context: context, value: 45),
                        width: getMediaQueryWidth(
                            context: context, value: double.infinity),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          "SEND OTP",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                    )
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
                    // SizedBox(
                    //   height:
                    //       getMediaQueryHeight(context: context, value: 40),
                    // ),
                    Center(
                      child: SizedBox(
                          child: Image.asset(
                        "assets/welcome-removebg.png",
                        height: 200,
                        fit: BoxFit.fill,
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Register Account",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        maxLines: 2,
                        "You Will Be Able To Track You Order, Use Wishing & More.",
                      ),
                    ),
                    // SizedBox(
                    //   height: getMediaQueryHeight(context: context, value: 50),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height:
                            getMediaQueryHeight(context: context, value: 45),
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
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  // hintStyle: GoogleFonts.poppins(
                                  //     color: Color(0xff707070),
                                  //     fontSize: 14,
                                  //     fontWeight: FontWeight.normal),
                                  border: InputBorder.none,
                                  hintText: "Email ID/Mobile",
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
                      height: getMediaQueryHeight(context: context, value: 15),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                    //  obscureText: _isHidden,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      // hintStyle: GoogleFonts.poppins(
                                      //     color: Color(0xff707070),
                                      //     fontSize: 14,
                                      //     fontWeight: FontWeight.normal),
                                      border: InputBorder.none,
                                      hintText: "Password",
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: IconButton(
                                      color: Color(0xff707070),
                                      onPressed: () {},
                                      // _togglePasswordView,
                                      icon:
                                          //  _isHidden
                                          //     ?
                                          Icon(Icons.visibility_off)
                                      // : Icon(Icons.visibility),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height:
                              getMediaQueryHeight(context: context, value: 25),
                        ),
                        Card(
                          child: Container(
                            height: getMediaQueryHeight(
                                context: context, value: 45),
                            width: getMediaQueryWidth(
                                context: context, value: double.infinity),
                            decoration: BoxDecoration(
                                border: Border.all(width: 2),
                                borderRadius: BorderRadius.circular(9)),
                            child: Center(
                                child: Text(
                              "LOG IN",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Text("Forget Password?"),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Text("Forget Password"),
                              content: Text(
                                  "Please submit your registered email address, so that we can send you the password reset link"),
                              actions: <Widget>[
                                Container(
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
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            // hintStyle: GoogleFonts.poppins(
                                            //     color: Color(0xff707070),
                                            //     fontSize: 14,
                                            //     fontWeight:
                                            //         FontWeight.normal),
                                            border: InputBorder.none,
                                            hintText: "Email Address",
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
                                SizedBox(
                                  height: getMediaQueryHeight(
                                      context: context, value: 15),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height: getMediaQueryHeight(
                                          context: context, value: 40),
                                      width: getMediaQueryWidth(
                                          context: context, value: 100),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("CANCEL")),
                                    ),
                                    // Card(
                                    //   child: Container(
                                    //     height: getMediaQueryHeight(
                                    //         context: context, value: 40),
                                    //     width: getMediaQueryWidth(
                                    //         context: context, value: 100),
                                    //     decoration: BoxDecoration(
                                    //         border: Border.all(width: 2),
                                    //         borderRadius:
                                    //             BorderRadius.circular(4)),
                                    //     child: Center(
                                    //         child: Text(
                                    //       "CANCEL",
                                    //       style: TextStyle(
                                    //           fontWeight: FontWeight.bold),
                                    //     )),
                                    //   ),
                                    // ),
                                    GestureDetector(
                                      onTap: () => Navigator.of(context).pop(),
                                      child: Card(
                                        child: Container(
                                          height: getMediaQueryHeight(
                                              context: context, value: 40),
                                          width: getMediaQueryWidth(
                                              context: context, value: 100),
                                          decoration: BoxDecoration(
                                              border: Border.all(width: 0.5),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: Center(
                                              child: Text(
                                            "OK",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
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
