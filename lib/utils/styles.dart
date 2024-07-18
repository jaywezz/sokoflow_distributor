import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  //colorsrgb(247, 246, 249)
  static Color appPrimaryColor = const Color(0xFF3f5365);
  static Color appPrimaryLightColor = const Color(0xFF131A1B);
  static Color appSecondaryColor = const Color.fromRGBO(0, 113, 188, 0);
  static Color appSecondaryColorLight = const Color.fromRGBO(41, 171, 226, 0);
  static Color appYellowColor = const Color(0xFFFCEE21);
  static Color greyColor = const Color(0xffe6e6ef);
  static Color purpleColor = const Color(0xfff1efff);

  static Color inProgressColor = const Color(0XFFAA5B01);
  static Color pendingColor = const Color(0XFFFEC872);
  static Color completeColor = const Color(0XFF0DC69A);



  //widget colors
  static Color appGreenColor = const Color(0xFF39B54A);

  static Color defaultInputFieldColor = Colors.grey;
  static Color activeInputFieldColor = appPrimaryColor;


  //Text colors

  static Color textBlue = const Color(0xFF284763);
  static Color textPurple = const Color.fromRGBO(173, 175, 240, 0);
  static Color textGreyColor = const Color.fromRGBO(193, 193, 193, 0);
  static Color textOrangeColor = const  Color(0xFFfc6d5d);

  //Graph colors
  static Color graphDarkblue = const  Color(0xFF29abe2);
  static Color graphLightlue = const  Color(0xFFc7eaf9);

  //texts

  //headings
  static TextStyle display5(BuildContext context) {
    return TextStyle(
        color: appPrimaryColor,
        fontSize: 28.sp,
        fontFamily: 'Sans',
        fontWeight: FontWeight.w600);
  }

  static TextStyle heading1(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontSize:  20.sp,
        fontFamily: 'Sans',
        fontWeight: FontWeight.bold);
  }

  static TextStyle heading2(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontSize: 18.sp,
        fontFamily: 'Sans',
        fontWeight: FontWeight.bold);
  }

  static TextStyle heading3(BuildContext context) {
    return heading2(context).copyWith(
      fontSize: 14.sp,
    );
  }

  static TextStyle heading4(BuildContext context) {
    return heading2(context).copyWith(
      fontSize: 12.sp,
    );
  }

  static TextStyle normalText(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: 12.sp,
      fontFamily: 'Sans',
    );
  }

  static TextStyle smallGreyText(BuildContext context) {
    return TextStyle(
      color: Colors.grey.shade700,
      fontSize: 14.sp,
      fontFamily: 'Sans',

    );
  }

  static TextStyle buttonText1(BuildContext context) {
    return heading2(context)
        .copyWith(color: Colors.white, fontWeight: FontWeight.normal);
  }

  static TextStyle buttonText2(BuildContext context) {
    return heading2(context)
        .copyWith(color: Colors.white, fontWeight: FontWeight.w700);
  }

  static TextStyle bttxt1(BuildContext context) {
    return heading3(context).copyWith(
      color: Styles.appPrimaryColor,
      fontSize: 15.sp,
    );
  }

  static TextStyle bttxt2(BuildContext context) {
    return heading3(context).copyWith(
      color: Styles.appPrimaryColor,
      fontSize: 15.sp,
    );
  }

  static TextStyle formNameText(BuildContext contex) {
    return TextStyle(
      color: Colors.grey.shade700,
      fontSize: 22.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w500,
    );
  }


  static TextStyle formBoldText(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontFamily: 'Sans',
        fontSize: 15.sp);
  }

  static TextStyle cardTextStyle(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w100,
        fontFamily: 'Sans',
        fontSize: 12.sp);
  }

  static TextStyle cardBoldTextStyle(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Sans',
        fontSize: 11.sp);
  }


  static TextStyle formText1(BuildContext) {
    return TextStyle(
      color: Colors.black54,
      fontFamily: 'Sans',
      fontSize: 15.sp,
    );
  }

  static TextStyle titleTextStyle(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontSize: 20.sp,
        fontFamily: 'Sans',
        fontWeight: FontWeight.bold);
  }

}
