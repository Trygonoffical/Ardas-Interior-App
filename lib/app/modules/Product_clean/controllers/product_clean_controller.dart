import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../../Model/DataShow/home_screen_data.dart';

class ProductCleanController extends GetxController {
  //TODO: Implement ProductCleanController

  final count = 0.obs;
  // var resultList = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    //loadProduct();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  // Future<void> loadProduct() async {
  //   String url = "https://fakestoreapi.com/products";
  //   var response = await http.get(Uri.parse(url));

  //   print(response.statusCode);

  //   if (response.statusCode == 200) {
  //     var decodeData = jsonDecode(response.body);
  //     log(decodeData);
  //     resultList.value = List.from(decodeData);
  //   }
  // }
  // Future<ProductModel> loadProduct() async {
  //   final response = await http.get(
  //     Uri.parse('https://fakestoreapi.com/products'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //   );
  //   // print(response.body);
  //   // print(response.statusCode);

  //   if (response.statusCode == 200) {
  //     // If the server did return a 201 CREATED response,
  //     // then parse the JSON.
  //     ProductModel welcome = ProductModel.fromJson(jsonDecode(response.body));

  //     return welcome;
  //   } else {
  //     // If the server did not return a 201 CREATED response,
  //     // then throw an exception.
  //     throw Exception('Failed');
  //   }
  // }
}
