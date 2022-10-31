import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CommonController extends GetxController {
  final storage = GetStorage();
  double rateValue = 0.0;
  String priceSymbol = "₹";
  bool isLoading = false;

  //show loader
  void showLoading() {
    isLoading = true;
    update();
  }

  //hide loader
  void hideLoading() {
    isLoading = false;
    update();
  }

  //show toast
  showToast(error) {
    Fluttertoast.showToast(msg: error);
  }

  //show popUp
  showPopUp(String title, Widget widget) {
    Get.defaultDialog(title: title, content: widget);
  }
}
