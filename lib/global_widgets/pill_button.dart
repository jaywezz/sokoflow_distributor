import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
class PillButton extends StatelessWidget {
  final bool selected;
  final Function action;
  final String text;
  final double? width;

  const PillButton(
      {Key? key,
        required this.selected,
        required this.action,
        required this.text,
        this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        action();
      },
      child: Card(
        elevation: 0,
        shape:
        RoundedRectangleBorder(
          side: selected? const BorderSide(color: Colors.transparent):BorderSide(color: Colors.grey.shade400, width: 1) ,
          borderRadius: BorderRadius.circular(20.r),
        ),
        color: selected ? Styles.appPrimaryColor : Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.sp),
          child: Center(
            child: AutoSizeText(
                text,
                maxLines: 1,
                style: Styles.heading3(context).copyWith(color: selected? Colors.white: Colors.grey)
            ),
          ),
        ),
      ),
    );
  }
}
