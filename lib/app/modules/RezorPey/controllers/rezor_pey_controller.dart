import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';

class RezorPeyController extends GetxController {
  //TODO: Implement RezorPeyController

  final count = 0.obs;
  // Razorpay razorpay = Razorpay();
  void onInit() {
    super.onInit();
    // razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    // razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    // razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
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

  // void setupPay() {
  //   razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS,
  //       (PaymentSuccessResponse responce) {
  //     log("Payment Done");
  //   });
  //   razorpay.on(Razorpay.EVENT_PAYMENT_ERROR,
  //       (PaymentFailureResponse response) {
  //     log("Payment Fail");
  //   });
  //   razorpay.on(
  //       Razorpay.EVENT_EXTERNAL_WALLET, (ExternalWalletResponse response) {});
  // void _handlePaymentSuccess(PaymentSuccessResponse response) {
  //   // Fluttertoast.showToast(
  //   //     msg: "SUCCESS: ${response.paymentId}", timeInSecForIos: 4);
  // }

  // void _handlePaymentError(PaymentFailureResponse response) {
  //   // Fluttertoast.showToast(
  //   //     msg: "ERROR: ${response.code} - ${response.message}",
  //   //     timeInSecForIos: 4);
  // }

  // void _handleExternalWallet(ExternalWalletResponse response) {
  //   // Fluttertoast.showToast(
  //   //     msg: "EXTERNAL_WALLET: ${response.walletName}", timeInSecForIos: 4);
  // }
  // // }
  // void openCheckout() async {
  //   var options = {
  //     'key': 'rzp_test_NNbwJ9tmM0fbxj',
  //     'amount': 28200,
  //     'name': 'Shaiq',
  //     'description': 'Payment',
  //     'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
  //     'external': {
  //       'wallets': ['paytm']
  //     }
  //   };

  //   try {
  //     razorpay.open(options);
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  // }
}
