import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LargeSearchField extends StatelessWidget {
  final String? hintText;
  final bool outline;
  final TextEditingController? textEditingController;
  final void Function(String value) onChanged;
  final Function() onTapClose;

  const LargeSearchField({super.key, this.hintText, this.outline =  false, required this.onChanged, required this.onTapClose, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      width: double.infinity,
      height: 40.sp,
      child: TextFormField(

        decoration:  InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
          hintText: "Search",
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: onTapClose,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.sp),
                  child:Icon(
                    Icons.close,
                    color: Colors.grey,
                    size: 20.sp,
                  )
              ),
            ),
          ),

          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                margin: const EdgeInsets.only(left: 20),
                child:Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 20.sp,
                )
            ),
          ),

          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(
                color: outline ? const Color.fromARGB(255, 114, 111, 111) : const Color.fromARGB(253, 190, 187, 187),
              )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide(
              color: outline ? const Color.fromARGB(255, 114, 111, 111) : const Color.fromARGB(253, 190, 187, 187),
            ),
          ),
          filled: true,
        ),
        onChanged: onChanged,
        controller: textEditingController,
        expands: true,
        maxLines: null,
        minLines: null,
      ),
    );
  }
}