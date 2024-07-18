import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/provider/auth_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/default_input_field.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
import 'package:nested_navigation_gorouter_example/utils/validators.dart';

Logger _log = Logger(printer: PrettyPrinter());

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  static const routeName = '/forgot_password';
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  bool hidePassword = true;
  bool hideConfirmPassword = true;
  bool isPhone = false;
  bool isChecked = false;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  String? password;
  String email = "";
  TextEditingController phoneController = TextEditingController();
  bool isAsyncCallProcess = false;
  final Duration duration = const Duration(milliseconds: 800);
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    globalKey.currentState!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Center(
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset("assets/icons/a – 23.png")),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Text("Forgot Password",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Styles.heading1(context)),
                            const SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: Text(
                                "Enter your phone number. An OTP will be sent for confirmation",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Styles.normalText(context),
                              ),
                            ),
                            SizedBox(height: 15.h),
                            SizedBox(
                              height: 10.h,
                            ),
                            Form(
                              key: globalKey,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              child: Container(
                                height: 190.h,
                                child:  DefaultInputField(
                                  title: 'Via SMS',
                                  hide: false,
                                  textEditingController: phoneController,
                                  validator: phoneNumberValidator,
                                  onSaved: (onSavedVal) {
                                    email = onSavedVal.toString().trim();
                                  },
                                  hintText: "07222*****",
                                  inputtype: TextInputType.phone,
                                  prefix: Icon(
                                    Icons.phone_android_rounded,
                                    size: 16.h,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            ref.watch(authNotifier)is AsyncLoading<void>?const AnimatedCircularProgressIndicator():FullWidthButton(
                              btnheight: 40,
                              text: "Proceed",
                              action: ()async {
                                if(globalKey.currentState!.validate()){
                                  await ref.read(authNotifier.notifier).sendOtp(phoneController.text, context, false);
                                }


                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _passwordResetForm(bool isphone) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultInputField(
          title: 'Via Email',
          hide: false,
          validator: (onValidateVal) {
            // if (onValidateVal.isEmpty) {
            //   return "Email Address required";
            // }
            bool emailValid = RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(onValidateVal);
            // if (!emailValid) {
            //   return "Invalid E-mail";
            // }
            return null;
          },
          onSaved: (onSavedVal) {
            email = onSavedVal.toString().trim();
          },
          hintText: "******ie@freshlife.com",
          suffix: Icon(
            Icons.check_circle,
            size: 16.h,
            color: Colors.green,
          ),
          prefix: Icon(
            Icons.email_sharp,
            size: 16.h,
            color: Colors.black54,
          ),
        ),
        SizedBox(height: 8.h),
        DefaultInputField(
          title: 'Via SMS',
          hide: false,
          validator: (onValidateVal) {
            if (onValidateVal.isEmpty) {
              return "Email Address required";
            }
            // if (!emailValid) {
            //   return "Invalid E-mail";
            // }
            return null;
          },
          onSaved: (onSavedVal) {
            email = onSavedVal.toString().trim();
          },
          hintText: "07222*****",
          prefix: Icon(
            Icons.phone_android_rounded,
            size: 16.h,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }

  bool validateSave() {
    final form = globalKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
