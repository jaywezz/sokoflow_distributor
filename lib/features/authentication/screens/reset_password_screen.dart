import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/provider/auth_provider.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/widgets/auth_base.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/google_sign_in_button.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/default_input_field.dart';
import 'package:nested_navigation_gorouter_example/powered_by_widget.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
import 'package:nested_navigation_gorouter_example/utils/validators.dart';

Logger _log = Logger(printer: PrettyPrinter());

class ResetPasswordScreen extends ConsumerStatefulWidget {
  static const routeName = '/reset-password';
  final String phoneNumber;
  const ResetPasswordScreen({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  ConsumerState<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
  bool hidePassword = true;
  bool hideConfirmPassword = true;
  bool isPhone = false;
  bool isChecked = false;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  String? password;
  String email = "";
  bool isAsyncCallProcess = false;
  final Duration duration = const Duration(milliseconds: 800);
  @override
  void initState() {
    super.initState();
  }


  @override
  void dispose() {
    // globalKey.currentState!.dispose();
    super.dispose();
  }

  bool hidePasswords = true;
  bool rememberMe = false;

  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final authNotifierProvider = ref.watch(authNotifier);

    ScreenUtil.init(context);
    return Scaffold(
        body:Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
          ),
          child: Form(
            key: loginKey,
            autovalidateMode:AutovalidateMode.onUserInteraction,
            child: Stack(
              children: [
                AuthBase(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Reset Password!",
                          style: Styles.heading1(context),
                        ),
                        SizedBox(height: defaultPadding(context) * 1.3),
                        DefaultInputField(
                          title: "Password",
                          textEditingController: passwordController,
                          suffix: InkWell(
                              onTap: (){
                                print("presses");
                                setState(() {
                                  hidePasswords = !hidePasswords;
                                });
                              },
                              child: Icon(Icons.remove_red_eye, color: Colors.black54,)),

                          hintText: "Enter new password",
                          password: hidePassword,
                          hide: hidePassword,
                          maxLine: 1,
                          validator: passwordValidator,
                          toggleHide: () {
                            setState(() {
                              hidePasswords = !hidePasswords;
                            });
                          },
                        ),

                        SizedBox(height: 17),
                        DefaultInputField(
                          title: "Confirm Password",
                          textEditingController: confirmPasswordController,
                          suffix: InkWell(
                              onTap: (){
                                print("presses");
                                setState(() {
                                  hidePassword = !hidePassword;
                                });
                              },
                              child: Icon(Icons.remove_red_eye, color: Colors.black54,)),

                          hintText: "Confirm password",
                          password: hidePassword,
                          hide:hidePassword,
                          maxLine: 1,
                          validator: (value){
                            if (value!.isEmpty) {
                              return "Cannot be empty"; // Phone number is empty
                            }else{
                              if(value! != passwordController.text){
                                return "Passwords don't match";
                              }else{
                                return null;
                              }
                            }
                          },
                          toggleHide: () {
                            setState(() {
                              hidePasswords = !hidePasswords;
                            });
                          },
                        ),

                        SizedBox(height: 20),

                        SizedBox(height: defaultPadding(context) * 2),
                        authNotifierProvider is AsyncLoading<void>?const AnimatedCircularProgressIndicator():FullWidthButton(
                          btnheight: 55,
                          text: "Reset Password",
                          action: ()async {
                            if(loginKey.currentState!.validate()){
                              await ref.read(authNotifier.notifier).resetPassword(widget.phoneNumber, passwordController.text, confirmPasswordController.text, context);
                            }
                          },
                        ),

                        // SizedBox(height: defaultPadding(context) * 0.3),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     const Expanded(
                        //         child: Divider(
                        //       thickness: 2,
                        //     )),
                        //     SizedBox(width: defaultPadding(context) * 0.4),
                        //     Text(
                        //       "Or",
                        //       style: Styles.normalText.copyWith(color: Colors.grey),
                        //     ),
                        //     SizedBox(width: defaultPadding(context) * 0.4),
                        //     const Expanded(
                        //         child: Divider(
                        //       thickness: 2,
                        //     )),
                        //   ],
                        // ),
                        // SizedBox(height: defaultPadding(context) * 0.3),
                        // SignInWithGoogleButton(action: () {
                        //   Navigate.instance.to('/home');
                        // }
                        // )
                      ],
                    ),
                    // Container(
                    //   child: Column(
                    //     children: [
                    //       SizedBox(
                    //         height: defaultPadding(context) * 2,
                    //       ),
                    //       RichText(
                    //           text: TextSpan(
                    //               text: "Don't have an account ? ",
                    //               style: Styles.normalText,
                    //               children: [
                    //             TextSpan(
                    //               text: "Sign Up",
                    //               style: const TextStyle(fontWeight: FontWeight.bold),
                    //               recognizer: TapGestureRecognizer()
                    //                 ..onTap = () {
                    //                   Navigate.instance.toRemove('/signUp');
                    //                 },
                    //             )
                    //           ]))
                    //     ],
                    //   ),
                    //   width: double.infinity - (defaultPadding(context) * 2),
                    //   padding: EdgeInsets.symmetric(horizontal: defaultPadding(context) * 2),
                    // )
                  ],
                ),
                WidgetsBinding.instance.window.viewInsets.bottom > 0.0?const SizedBox():const Positioned(
                    bottom: -1,
                    left: 120,
                    child: PoweredByWidget())

              ],
            ),
          ),
        )
    );
  }

  _emailField(bool isphone) {
    return Column(
      children: [
        DefaultInputField(
          title: 'Email Address',
          hide: false,
          validator: (onValidateVal) {
            if (onValidateVal.isEmpty) {
              return "Email Address required";
            }
            bool emailValid = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(onValidateVal);
            if (!emailValid) {
              return "Invalid E-mail";
            }
            return null;
          },
          onSaved: (onSavedVal) {
            email = onSavedVal.toString().trim();
          },
          hintText: "example@freshlife.com",
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
          title: 'Password',
          validator: (onValidateVal) {
            if (onValidateVal.length < 6) {
              return "Password required";
            }
            return null;
          },
          onSaved: (onSavedVal) {
            password = onSavedVal.toString().trim();
          },
          hintText: "************",
          password: true,
          hide: false,
          prefix: Icon(
            Icons.lock,
            size: 16.h,
            color: Colors.black54,
          ),
          suffix: Icon(
            Icons.remove_red_eye,
            size: 16.h,
            color: Colors.black54,
          ),
          toggleHide: () {
            setState(() {
              hidePassword = !hidePassword;
            });
          },
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
