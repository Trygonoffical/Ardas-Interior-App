import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogsView extends StatefulWidget {
  BlogsView({Key? key}) : super(key: key);

  @override
  State<BlogsView> createState() => _BlogsViewState();
}

class _BlogsViewState extends State<BlogsView> {
  bool isLoader = false;
  int likecounter = 111;
  // String phoneNumber = '9310140032';
  // String description = "your-custom-message";
  // void _contactViaWhatsApp(context) async {
  //   String whatsAppUrl = "whatsapp://send?phone=$phoneNumber";

  //   if (Platform.isIOS) {
  //     whatsAppUrl =
  //         'whatsapp://wa.me/$phoneNumber/?text=${Uri.parse(description)}';
  //   } else {
  //     whatsAppUrl =
  //         'https://wa.me/+$phoneNumber?text=${Uri.parse(description)}';
  //   }

  //   if (await canLaunch(whatsAppUrl)) {
  //     await launch(whatsAppUrl);
  //   } else {
  //     final snackBar = SnackBar(
  //       content: Text("Install WhatsApp First Please"),
  //     );
  //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoader
          ? Center(child: CircularProgressIndicator(color: Colors.black))
          : Scaffold(
              backgroundColor: Color(0xFFEBEBEB),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),

                  // GridView.builder(
                  //   crossAxisCount: 2,
                  //   crossAxisSpacing: 10.0,
                  //   mainAxisSpacing: 10.0,
                  //   children: [
                  //     Container(height: 200, width: 200, color: Colors.red)
                  //   ],
                  // ),
                ),
              ),
            ),
    );
  }
}
