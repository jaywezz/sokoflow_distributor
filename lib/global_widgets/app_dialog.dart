import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

void showCustomDialog({required BuildContext context, required Widget body, required void Function() onOk, Widget? cancelButton, Widget? okButton})async{
  AwesomeDialog(
    context: context,
    transitionAnimationDuration:const Duration(milliseconds: 300),
    animType: AnimType.bottomSlide,
    dialogType: DialogType.noHeader,
    body: body,
    title: 'Schedule Meet Up',
    btnCancel:cancelButton??ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          fixedSize: Size(300.w, 30.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r))),
      onPressed: () {
        // Respond to button press
        Navigator.pop(context);
      },
      child: Text("Cancel", style: Styles.heading4(context).copyWith(color: Colors.grey.shade500),),
    ),
    btnOk: okButton??ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Styles.appPrimaryColor,
          fixedSize: Size(300.w, 30.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r))),
      onPressed: onOk,
      child: Text("Set", style: Styles.heading4(context).copyWith(color: Colors.white),),
    ),
    btnCancelColor: Colors.transparent,

    btnOkOnPress: () {},
    btnCancelOnPress: () {
      print("cancel presses");
      Navigator.pop(context);
    },
  ).show();
}