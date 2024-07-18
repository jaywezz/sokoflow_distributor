import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
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

import 'package:pinput/pinput.dart';
import '../../../global_widgets/indicators/default_progress_indicator.dart';


class OtpLogin2 extends ConsumerStatefulWidget {
  static const routeName = 'otp_login';
  final String phoneNumber;
  final String otp;
  const OtpLogin2({Key? key, required this.phoneNumber, required this.otp}) : super(key: key);

  @override
  ConsumerState<OtpLogin2> createState() => _OtpLogin2State();
}

class _OtpLogin2State extends ConsumerState<OtpLogin2> {
  final Duration duration = const Duration(milliseconds: 800);
  TextEditingController otpController = TextEditingController();
  final focusedBorderColor = Styles.appYellowColor;
  final fillColor = const Color.fromRGBO(243, 246, 249, 0);
  // final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(19),
      border: Border.all(color: Styles.appPrimaryColor),
    ),
  );

  handleLogin()async{
    if(otpController.text.length == 6 && otpController.text != ""){
      await ref.read(authNotifier.notifier)
          .otpLogin(widget.phoneNumber, otpController.text, context);
    }else{
      showCustomSnackBar("Invalid otp entered", bgColor: Styles.appPrimaryColor);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    otpController.clear();
    super.initState();
  }

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
                      Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Directionality(
                        // Specify direction if desired
                        textDirection: TextDirection.ltr,
                        child: Pinput(
                          controller: otpController,
                          focusNode: focusNode,
                          length: 6,
                          androidSmsAutofillMethod:AndroidSmsAutofillMethod.smsUserConsentApi,
                          listenForMultipleSmsOnAndroid: true,
                          defaultPinTheme: defaultPinTheme,
                          separatorBuilder: (index) => const SizedBox(width: 8),
                          validator: (value) {
                            print("widget otp: ${widget.otp} value ${value}");
                            return value == widget.otp ? null : 'Pin is incorrect';
                          },
                          onClipboardFound: (value) {
                            debugPrint('onClipboardFound: $value');
                            otpController.setText(value);
                          },
                          hapticFeedbackType: HapticFeedbackType.lightImpact,
                          onCompleted: (pin)async {
                            if(formKey.currentState!.validate()){
                              debugPrint('onCompleted: $pin');
                              await handleLogin();
                            }
                          },
                          onChanged: (value) {
                            debugPrint('onChanged: $value');
                          },
                          cursor: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 9),
                                width: 22,
                                height: 1,
                                color: focusedBorderColor,
                              ),
                            ],
                          ),
                          focusedPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Styles.appPrimaryColor),
                            ),
                          ),
                          submittedPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                              color: fillColor,
                              borderRadius: BorderRadius.circular(19),
                              border: Border.all(color: Colors.green),
                            ),
                          ),
                          errorPinTheme: defaultPinTheme.copyBorderWith(
                            border: Border.all(color: Colors.redAccent),
                          ),
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () {
                      //     focusNode.unfocus();
                      //     formKey.currentState!.validate();
                      //   },
                      //   child: const Text('Validate'),
                      // ),
                    ],
                  ),
                ),
                      SizedBox(height: 20.h),
                      ref.watch(authNotifier)is AsyncLoading<void>?const AnimatedCircularProgressIndicator():FullWidthButton(
                        btnheight: 50,
                        action: ()async {
                          await handleLogin();
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
