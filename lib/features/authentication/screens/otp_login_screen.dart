
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/provider/auth_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../global_widgets/indicators/default_progress_indicator.dart';

class OTPLoginScreen extends ConsumerStatefulWidget {
  static const routeName = 'otp_login_screen';
  final String phoneNumber;
  const OTPLoginScreen({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  ConsumerState<OTPLoginScreen> createState() => _OTPLoginScreenState();
}

class _OTPLoginScreenState extends ConsumerState<OTPLoginScreen> {
  final Duration duration = const Duration(milliseconds: 800);
  TextEditingController otpController = TextEditingController();
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset("assets/icons/a – 23.png")
                  ),
                ),
                SizedBox(height: 50.h,),
                Container(
                  height: 200.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Styles.greyColor)),
                  child: Center(
                    child: Container(
                      height: 120.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Styles.greyColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(30.0.h),
                        child: const Icon(
                          Icons.lock_sharp,
                          color: Colors.black54,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.w),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                          "Enter 6 Digit Pin",
                          style: Styles.heading1(context)
                      ),
                      SizedBox(height: 10.h),
                      AutoSizeText(
                        "The login code was sent to your phone number. Please enter the code",
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style:
                        Styles.normalText(context),
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: PinCodeTextField(
                          appContext: (context),
                          keyboardType: TextInputType.number,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          useExternalAutoFillGroup: true,
                          pinTheme: PinTheme.defaults(
                            shape: PinCodeFieldShape.box,
                            borderWidth: 1,
                            borderRadius: BorderRadius.circular(6.r),
                            inactiveColor: Colors.black26,
                            activeColor: Colors.black26,
                            selectedFillColor: Styles.greyColor,
                            selectedColor: Styles.greyColor,
                            activeFillColor: Styles.greyColor,
                            inactiveFillColor: Styles.greyColor,
                          ),
                          length: 6,
                          animationDuration: const Duration(milliseconds: 300),
                          errorAnimationController: null,
                          controller: otpController,
                          onCompleted: (v) {
                            print("Completed");
                          },
                          onChanged: (value) {
                            print(value);
                          },
                          beforeTextPaste: (text) {
                            print('Allowing to paste $text');
                            return true;
                          },
                        ),
                      ),
                      SizedBox(height: 20.h),
                      ref.watch(authNotifier)is AsyncLoading<void>?const AnimatedCircularProgressIndicator():FullWidthButton(
                        btnheight: 50,
                        action: ()async {
                          if(otpController.text.length ==6 && otpController.text != ""){
                            await ref.read(authNotifier.notifier)
                                .otpLogin(widget.phoneNumber, otpController.text, context);
                          }else{
                            showCustomSnackBar("Invalid otp entered", bgColor: Styles.appPrimaryColor);
                          }
                        },
                        text: "Login",
                      ),
                      SizedBox(height: 20.h),
                      TextButton(
                          onPressed: () {
                            context.pop();
                          },
                          child: Text(
                            'Send again',
                            style: TextStyle(
                                color: Colors.black26,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp),
                          ))
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
