
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'login_screen.dart';

class ResetSuccesScreen extends StatefulWidget {
  static const routeName = 'reset_success_screen';
  const ResetSuccesScreen({Key? key}) : super(key: key);

  @override
  State<ResetSuccesScreen> createState() => _ResetSuccesScreenState();
}

class _ResetSuccesScreenState extends State<ResetSuccesScreen> {
  final Duration duration = const Duration(milliseconds: 800);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [

                SizedBox(height: 50.h,),
                Container(
                  height: 150.h,
                  width: 150.w,
                  decoration:BoxDecoration(
                      shape: BoxShape.circle,
                    color: Styles.appGreenColor
                      ),
                  child: Center(
                    child: Icon(

                      Icons.check,
                      color: Colors.white,

                      size: 50.sp,
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.all(10.w),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                          "Reset Successful",
                          style: Styles.heading1(context)
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: AutoSizeText(
                          "You have successfully changed your password. Please use your new password when loggin in",
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style:
                          Styles.normalText(context),
                        ),
                      ),
                      SizedBox(height: 60.h),
                      FullWidthButton(
                        btnheight: 50,
                        action: () {
                          context.go("/login");

                        },
                        text: "Login",
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
