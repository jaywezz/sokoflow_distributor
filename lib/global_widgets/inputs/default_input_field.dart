import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class DefaultInputField extends StatelessWidget {
  final String? hintText;
  final Widget? prefix;
  final bool password;
  final bool isroundedPrefix;
  final bool hide;
  final Function? toggleHide;
  final bool textCenter;
  final Widget? suffix;
  final bool enabled;
  final TextInputType? inputtype;
  final double? height;
  final String title;
  final bool hasTitle;
  final dynamic validator;
  final dynamic onSaved;
  final Function()? onTap;
  final Function(String value)? onChanged;
  final bool? readOnly;
  final String? initVal;
  final TextEditingController? textEditingController;
  final BorderRadius? borderRadius;
  final int? maxLine;
  final int? minLine;
  var inputFormatters;

  DefaultInputField(
      {Key? key,
        required this.title,
        this.hintText,
        this.height,
        this.prefix,
        this.inputtype,
        this.password = false,
        this.isroundedPrefix = true,
        this.hasTitle = true,
        this.hide = false,
        this.toggleHide,
        this.validator,
        this.onSaved,
        this.onChanged,
        this.onTap,
        this.inputFormatters,
        this.textCenter = false,
        this.suffix,
        this.textEditingController,
        this.borderRadius,
        this.enabled = true,
        this.readOnly,
        this.initVal,
        this.maxLine,
        this.minLine,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          hasTitle
              ? Text(
            title,
            style: Styles.heading3(context)
                .copyWith(color: Colors.black54, fontSize: 12.sp),
          )
              : Container(),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 0.h),
            height:null,
            child: TextFormField(
              //autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: textEditingController,
              maxLines: maxLine,
              minLines: minLine,
              validator: validator,
              onSaved: onSaved,
              onChanged: onChanged,
              onTap: onTap,
              initialValue: initVal,
              readOnly: readOnly ?? false,
              inputFormatters: inputFormatters,
              scrollPadding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),
              keyboardType: inputtype ?? TextInputType.text,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black54,
              ),

              textAlign: textCenter ? TextAlign.center : TextAlign.start,
              obscureText: hide,
              decoration: InputDecoration(
                errorStyle: TextStyle(
                  fontSize: 10,
                ),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 10.sp,
                    horizontal: 10.sp),
                suffixIcon: suffix,
                prefixIcon: prefix,
                //constraints: BoxConstraints(minHeight: 55.h, maxHeight: 70.h),
                enabled: enabled,
                helperText: "",
                hintText: hintText,
                hintStyle:
                Styles.heading3(context).copyWith(color: Colors.black26),
                fillColor: Colors.grey.withOpacity(.1),
                filled: readOnly ?? false,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
