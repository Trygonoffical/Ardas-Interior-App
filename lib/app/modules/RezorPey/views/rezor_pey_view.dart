import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';
import '../controllers/rezor_pey_controller.dart';

class RezorPeyView extends GetView<RezorPeyController> {
  const RezorPeyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    RezorPeyController rezorPeyController = Get.put(RezorPeyController());
    return Scaffold(
      drawer: Drawer(
        ///backgroundColor: Colors.transparent,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Abhishek Mishra"),
              accountEmail: Text("abhishekm977@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Positioned(
                  top: 100,
                  left: 150,
                  child: Drawer(
                    backgroundColor: Colors.red,
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      // MultiLevelDrawer(
      //   backgroundColor: Colors.white,
      //   rippleColor: Colors.white,
      //   subMenuBackgroundColor: Colors.grey.shade100,
      //   header: Container(
      //     // Header for Drawer

      //     child: Center(
      //         child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Image.asset(
      //           "assets/decor.jpg",
      //           width: 100,
      //           height: 100,
      //         ),
      //         SizedBox(
      //           height: 10,
      //         ),
      //         Text("RetroPortal Studio")
      //       ],
      //     )),
      //   ),
      //   children: [
      //     // Child Elements for Each Drawer Item
      //     MLMenuItem(
      //         leading: Icon(Icons.person),
      //         trailing: Icon(Icons.arrow_right),
      //         content: Text(
      //           "My Profile",
      //         ),
      //         subMenuItems: [
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
      //         ],
      //         onClick: () {}),
      //     MLMenuItem(
      //         leading: Icon(Icons.settings),
      //         trailing: Icon(Icons.arrow_right),
      //         content: Text("Settings"),
      //         onClick: () {},
      //         subMenuItems: [
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 2"))
      //         ]),
      //     MLMenuItem(
      //       leading: Icon(Icons.notifications),
      //       content: Text("Notifications"),
      //       onClick: () {},
      //     ),
      //     MLMenuItem(
      //         leading: Icon(Icons.payment),
      //         trailing: Icon(Icons.arrow_right),
      //         content: Text(
      //           "Payments",
      //         ),
      //         subMenuItems: [
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
      //         ],
      //         onClick: () {}),
      //     MLMenuItem(
      //         leading: Icon(Icons.person),
      //         trailing: Icon(Icons.arrow_right),
      //         content: Text(
      //           "My Profile",
      //         ),
      //         subMenuItems: [
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
      //         ],
      //         onClick: () {}),
      //     MLMenuItem(
      //         leading: Icon(Icons.settings),
      //         trailing: Icon(Icons.arrow_right),
      //         content: Text("Settings"),
      //         onClick: () {},
      //         subMenuItems: [
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 2"))
      //         ]),
      //     MLMenuItem(
      //       leading: Icon(Icons.notifications),
      //       content: Text("Notifications"),
      //       onClick: () {},
      //     ),
      //     MLMenuItem(
      //         leading: Icon(Icons.payment),
      //         trailing: Icon(Icons.arrow_right),
      //         content: Text(
      //           "Payments",
      //         ),
      //         subMenuItems: [
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
      //         ],
      //         onClick: () {}),
      //     MLMenuItem(
      //         leading: Icon(Icons.person),
      //         trailing: Icon(Icons.arrow_right),
      //         content: Text(
      //           "My Profile",
      //         ),
      //         subMenuItems: [
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
      //         ],
      //         onClick: () {}),
      //     MLMenuItem(
      //         leading: Icon(Icons.settings),
      //         trailing: Icon(Icons.arrow_right),
      //         content: Text("Settings"),
      //         onClick: () {},
      //         subMenuItems: [
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 2"))
      //         ]),
      //     MLMenuItem(
      //       leading: Icon(Icons.notifications),
      //       content: Text("Notifications"),
      //       onClick: () {},
      //     ),
      //     MLMenuItem(
      //         leading: Icon(Icons.payment),
      //         trailing: Icon(Icons.arrow_right),
      //         content: Text(
      //           "Payments",
      //         ),
      //         subMenuItems: [
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
      //         ],
      //         onClick: () {}),
      //   ],
      // ),
      appBar: AppBar(
        title: const Text('RezorPeyView'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          // onTap: () async {
          //   var options = {'amount': 100, 'name': 'Ravi'};
          //   rezorPeyController.razorpay.open(options);
          // },
          child: Text(
            'RezorPeyView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
