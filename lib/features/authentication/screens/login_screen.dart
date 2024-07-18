import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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
import 'package:url_launcher/url_launcher.dart';

import '../../../app_constants/urls.dart';
import 'forgot_password_screen.dart';

Logger _log = Logger(printer: PrettyPrinter());

class SignInScreen extends ConsumerStatefulWidget {
  static const routeName = 'sign-in';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
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
                        "Welcome!",
                        style: Styles.heading1(context),
                      ),
                      SizedBox(height: defaultPadding(context) * 1.3),
                      Text(
                        """Stay signed in with your account to
                         make work easier""",
                        style: Styles.normalText(context),
                      ),
                      SizedBox(height: 17),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultInputField(
                            height: 50,
                            title: 'Phone Number',
                            textEditingController: phoneController,
                            hide: false,
                            // prefix: Icon(Icons.call, color: Colors.black54,),
                            inputtype: TextInputType.phone,
                            hintText: "Enter your phone number",
                            validator: phoneNumberValidator,
                          ),
                        ],
                      ),

                      SizedBox(height: 17),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   'Password',
                          //   style: Styles.normalText(context)
                          //       .copyWith(color: Colors.black),
                          // ),
                          DefaultInputField(
                            title: "Password",
                            textEditingController: passwordController,
                            suffix: InkWell(
                                onTap: (){
                                  print("presses");
                                  setState(() {
                                    hidePassword = !hidePassword;
                                  });
                                },
                                child: Icon(Icons.remove_red_eye, color: Colors.black54,)),

                            hintText: "Enter your password",
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
                        ],
                      ),

                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: rememberMe
                                            ? Styles.appSecondaryColor
                                            : Colors.white,
                                        border: Border.all(
                                          color: Styles.defaultInputFieldColor,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(defaultRadius1 - 6)),
                                    margin: const EdgeInsets.only(left: 10),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      rememberMe = !rememberMe;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: defaultPadding(context) * 0.7,
                                ),
                                const Text("Keep me signed in")
                              ],
                            ),
                            GestureDetector(
                              child: Text(
                                "Forgot Password?",
                                style: Styles.normalText(context)
                                    .copyWith(color: Styles.appPrimaryColor),
                              ),
                              onTap: () {
                                context.goNamed(ForgotPasswordScreen.routeName);


                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: defaultPadding(context) * 2),
                      authNotifierProvider is AsyncLoading<void>?const AnimatedCircularProgressIndicator():FullWidthButton(
                        btnheight: 55,
                        text: "Sign In",
                        action: ()async {
                          // context.go("/dashboard");
                          if(loginKey.currentState!.validate()){
                            await ref.read(authNotifier.notifier).phonePasswordLogin(phoneController.text, passwordController.text, context);
                          }
                        },
                      ),

                      SizedBox(height: 10,),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Terms and conditions apply.  ',
                              style: TextStyle(color: Colors.black54),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = launchPrivacyPolicy,
                            ),
                          ],
                        ),
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


launchPrivacyPolicy() async {
  final Uri _url = Uri.parse("${UrlConstants.url}privacy-policy");
  await launchUrl(_url);

}
