import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/styles.dart';
//import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormDropDownField extends StatelessWidget {
  FormDropDownField(
  {super.key,
  required this.value,
  required this.itemsLists,
  this.hintText,
  this.fillColor,
  required this.onChanged,
  required this.title});
  final dynamic value;
  final String title;
  final String? hintText;
  List<dynamic> itemsLists;
  final void Function(dynamic value) onChanged;
  Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.heading3(context)
              .copyWith(color: Colors.black54, fontSize: 12.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white, //background color of dropdown button
              border: Border.all(
                  color: Styles.greyColor
                      .withOpacity(.3)), //border of dropdown button
              borderRadius: BorderRadius.circular(10.sp),
            ),
            child: DropdownButtonFormField(
              isExpanded: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide:
                    BorderSide(color: Styles.defaultInputFieldColor, width: 1)),
                focusColor: Styles.defaultInputFieldColor,
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Styles.defaultInputFieldColor, width: 0.7)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    BorderSide(color: Styles.defaultInputFieldColor, width: 0.7)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: Colors.redAccent, width: 0.9)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    BorderSide(color: Styles.appPrimaryColor, width: 0.9)),

                // prefixIcon: Container(
                //     height: 10,
                //   width: 10,
                //   decoration: BoxDecoration(
                //     color: Styles.appYellowColor,
                //       shape: BoxShape.circle
                //   ),
                //     child: Icon(Icons.add, color: Colors.redAccent, size: 1
                //       ,)
                // ),
              ),
              hint: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.arrow_drop_down),
                  ),
                ],
              ), // Not necessary for Option 1
              style: Styles.heading1(context),
              value: value,
              onChanged: onChanged,
              items: itemsLists.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      value!,
                      style: Styles.heading3(context)
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                  ),
                );
              }).toList(),
              icon: const Padding(
                //Icon at tail, arrow bottom is default icon
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Icon(Icons.keyboard_arrow_down)),
            ),
          ),
        ),
      ],
    );
  }
}
