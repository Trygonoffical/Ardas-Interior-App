import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_cli/Custom_widget/container_heigh.dart';
import 'package:get_cli/app/modules/Upload_Product/controllers/upload_product_controller.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadProductView extends StatefulWidget {
  UploadProductView({Key? key}) : super(key: key);

  @override
  State<UploadProductView> createState() => _UploadProductViewState();
}

class _UploadProductViewState extends State<UploadProductView> {
  File? selectedImage;
  String base64Image = "";
  List<Container> box = [Container()];

  Future<void> chooseImage(type) async {
    // ignore: prefer_typing_uninitialized_variables
    var image;
    if (type == "camera") {
      image = await ImagePicker()
          .pickImage(source: ImageSource.camera, imageQuality: 10);
    } else {
      image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 25);
    }
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
        base64Image = base64Encode(selectedImage!.readAsBytesSync());
      });
    }
  }

  void addTextFormField() {
    setState(() {
      box.add(
        Container(
          child: GestureDetector(
            onTap: () {
              Get.defaultDialog(
                  title: "Choose Upload Type",
                  middleText: "Upload Your Product Picture",
                  content: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          chooseImage("camera").then((value) => Get.back());
                        },
                        child: const Text(" Image from Camera"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          chooseImage("Gallery").then((value) => Get.back());
                        },
                        child: const Text("Image From Gallery"),
                      ),
                      SizedBox(
                        width: getMediaQueryWidth(context: context, value: 150),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("Cancel"),
                        ),
                      ),
                    ],
                  ));
            },
            child: Container(
              height: getMediaQueryHeight(context: context, value: 250),
              width:
                  getMediaQueryWidth(context: context, value: double.infinity),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F0C8),
                  borderRadius: BorderRadius.circular(9)),
              child: selectedImage != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: Image.file(
                        selectedImage!,
                        fit: BoxFit.cover,
                        height: 100,
                        width: 100,
                      ),
                    )
                  : Center(
                      child: Text(
                        "Tap to Upload Picture",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
            ),
          ),
        ),
      );
    });
  }

  final _formKey = GlobalKey<FormState>();
  List<TextFormField> formFields = [];

  void _addFormField() {
    formFields.add(TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter a value',
      ),
    ));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    UploadProductController controller = Get.put(UploadProductController());
    final int numberOfContainers = 10;
    return Scaffold(
      //  backgroundColor: Color(0xFFEBEBEB),
      appBar: AppBar(
        title: const Text("Upload  Product"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 15),
                ),
                GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                        title: "Choose Upload Type",
                        middleText: "Upload Your Product Picture",
                        content: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                chooseImage("camera")
                                    .then((value) => Get.back());
                              },
                              child: const Text(" Image from Camera"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                chooseImage("Gallery")
                                    .then((value) => Get.back());
                              },
                              child: const Text("Image From Gallery"),
                            ),
                            SizedBox(
                              width: getMediaQueryWidth(
                                  context: context, value: 150),
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Text("Cancel"),
                              ),
                            ),
                          ],
                        ));
                  },
                  child: Container(
                    height: getMediaQueryHeight(context: context, value: 350),
                    width: getMediaQueryWidth(
                        context: context, value: double.infinity),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/UPLOADNEW.png"),
                            fit: BoxFit.fill),

                        // color: Color(0xFFF5F0C8),
                        borderRadius: BorderRadius.circular(9)),
                    child: selectedImage != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(9),
                            child: Image.file(
                              selectedImage!,
                              fit: BoxFit.fill,
                              height: 100,
                              width: 100,
                            ),
                          )
                        : Center(
                            child: Text(
                              "",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                  ),
                ),
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 25),
                ),
                // for (var i = 0; i < box.length; i++) box[i],
                // SizedBox(height: 16),
                // RaisedButton(
                //   onPressed: addTextFormField,
                //   child: Text('Add Picture'),
                // ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
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
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  // hintStyle: GoogleFonts.poppins(
                                  //     color: Color(0xff707070),
                                  //     fontSize: 14,
                                  //     fontWeight: FontWeight.normal),
                                  border: InputBorder.none,
                                  hintText: "Enter Name",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height:
                            getMediaQueryHeight(context: context, value: 25),
                      ),
                      Container(
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
                                keyboardType: TextInputType.phone,
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
                      SizedBox(
                        height:
                            getMediaQueryHeight(context: context, value: 25),
                      ),
                      Container(
                        width: double.infinity,
                        height:
                            getMediaQueryHeight(context: context, value: 100),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  // hintStyle: GoogleFonts.poppins(
                                  //     color: Color(0xff707070),
                                  //     fontSize: 14,
                                  //     fontWeight: FontWeight.normal),
                                  border: InputBorder.none,
                                  hintText: "Discription write here...",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // ElevatedButton(
                //     onPressed: () {
                //       controller.selectMultipleImage();
                //     },
                //     child: Text("List Image")),
                SizedBox(
                  height: getMediaQueryHeight(context: context, value: 25),
                ),
                // Obx(() {
                //   return Expanded(
                //       child: GridView.builder(
                //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //               crossAxisCount: 3,
                //               crossAxisSpacing: 16,
                //               mainAxisSpacing: 16),
                //           itemBuilder: ((context, index) {
                //             return Image.file(controller.listImagePath![index]);
                //           })));
                // }),
                GestureDetector(
                  onTap: () {
                    Get.snackbar("Send", "Messages Send Successfully",
                        colorText: Colors.white,
                        backgroundColor: Colors.green,
                        snackPosition: SnackPosition.BOTTOM);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(9)),
                    height: getMediaQueryHeight(context: context, value: 45),
                    // width: double.infinity,
                    child: Center(
                      child: Text(
                        "Upload",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class UploadProductView extends GetView<UploadProductController> {
//   const UploadProductView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     UploadProductController controller = Get.put(UploadProductController());

//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('UploadProductView'),
//           centerTitle: true,
//         ),
//         body: SafeArea(
//           child: Column(
//             children: [
//               Obx(() => controller.selectedImagePath.value == ""
//                   ? Text("Select")
//                   : Image.file(File(controller.selectedImagePath.value))),
//               RaisedButton(onPressed: () {
//                 controller.getImage(ImageSource.camera);
//               }, child: Text("camera"),
//               )
//             ],
//           ),
//         ));
//   }
// }
