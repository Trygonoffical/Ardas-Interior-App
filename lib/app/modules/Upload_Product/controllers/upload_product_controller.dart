import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class UploadProductController extends GetxController {
  final ImagePicker _picker = ImagePicker();
  List<XFile>? images = [];
  List listImagePath = [];
  var selectedFileCount = 0.obs;
//   void _pickImage() async {
//     final picker = ImagePicker();
//     final pickedImage = await picker.pickImage(source: ImageSource.camera);
//     pickedImageFile = File(pickedImage!.path);
//     update();
//   }

//   void Function() get pickImage => _pickImage;
// }
  // var selectedImagePath = ''.obs;
  // var selectedImageSize = ''.obs;
  // final count = 0.obs;
  // File? image;

  // void getImage(ImageSource imageSource) async {
  //   final pickedFile = await ImagePicker().getImage(source: imageSource);
  //   if (pickedFile != null) {
  //     selectedImagePath.value = pickedFile.path;
  //     // selectedImageSize.value=((File(selectedImagePath.value)).lengthSync()/1024/1024).toString()

  //   } else {
  //     Get.snackbar('Error', 'No Image Selected',
  //         snackPosition: SnackPosition.BOTTOM,
  //         backgroundColor: Colors.red,
  //         colorText: Colors.white);
  //   }
  // }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void selectMultipleImage() async {
    images = await _picker.pickMultiImage();
    if (images != null) {
      for (XFile file in images!) {
        listImagePath.add(file.path);
      }
    } else {
      Get.snackbar('fail', 'No Image Select',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
    selectedFileCount.value = listImagePath.length;
  }
}
