import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';


class FullWidthButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final Color? color;
  final double? width;
  final double? btnheight;
  final double? fontsize;
  final VoidCallback action;
  final ShapeBorder? shape;

  const FullWidthButton(
      {Key? key,
        this.text,
        this.child,
        this.color,
        this.btnheight,
        required this.action,
        this.fontsize,
        this.shape,
        this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color ?? Styles.appPrimaryColor,
      minWidth: width ?? double.infinity,
      height: btnheight ?? 40.h,
      shape: shape??RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      onPressed: action,
      child: child ??
          Text("$text",
              style: Styles.heading2(context).copyWith(color: Colors.white)),
    );
  }
}
