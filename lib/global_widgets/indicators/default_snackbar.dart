import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

void showCustomSnackBar(String message, {Color? bgColor, bool isError = true}) {
  Fluttertoast.showToast(
    toastLength: Toast.LENGTH_LONG,
    msg: message,
    textColor: Colors.white,
    webPosition: 'top',
    gravity: ToastGravity.TOP,
    backgroundColor: bgColor ?? (isError ? Colors.red : Colors.green),
  );
}

void showSnackBar({required String text, Color? bgColor, Color? txtColor}) {
  Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 5,
    backgroundColor: bgColor ?? Styles.appSecondaryColor,
    textColor: txtColor ?? Colors.white,
    fontSize: 14,
  );
}