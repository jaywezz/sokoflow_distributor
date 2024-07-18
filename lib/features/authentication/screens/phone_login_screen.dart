import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:nested_navigation_gorouter_example/app_constants/urls.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/provider/auth_provider.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/login_screen.dart';
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

Logger _log = Logger(printer: PrettyPrinter());

class PhoneLoginScreen extends ConsumerStatefulWidget {
  static const routeName = '/phone_login';
  const PhoneLoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<PhoneLoginScreen> createState() => _PhoneLoginScreenState();
}

class _PhoneLoginScreenState extends ConsumerState<PhoneLoginScreen> {

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

  bool rememberMe = false;

  var phoneController = TextEditingController();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final authNotifierProvider = ref.watch(authNotifier);

    ScreenUtil.init(context);
    return Scaffold(
        body:Container(
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
          // ),
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
                        Center(
                          child: Text(
                            """Stay signed in with your account to
                         make work easier""",
                            style: Styles.heading4(context).copyWith(color: Colors.black54),
                          ),
                        ),
                        SizedBox(height: 17),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DefaultInputField(
                              height: 50,
                              title: 'Enter your phone number',
                              textEditingController: phoneController,
                              hide: false,
                              // prefix: Icon(Icons.call, color: Colors.black54,),
                              inputtype: TextInputType.phone,
                              hintText: "Enter your phone number",
                              validator: phoneNumberValidator,
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
                                    width: defaultPadding(context) * .9,
                                  ),
                                  Text("Keep me signed in",
                                    style:Styles.heading4(context).copyWith(color: Colors.black54),)
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: defaultPadding(context) * 2),
                        authNotifierProvider is AsyncLoading<void>?const AnimatedCircularProgressIndicator():FullWidthButton(
                          btnheight: 55,
                          text: "Send Otp",
                          action: ()async {
                            // context.go("/dashboard");
                            if(loginKey.currentState!.validate()){
                              await ref.read(authNotifier.notifier).sendOtp(phoneController.text, context, true);
                            }
                          },
                        ),



                        SizedBox(height: 20,),
                        Center(
                          child: Text("Or",
                            style:Styles.heading4(context).copyWith(color: Colors.black54),),
                        ),
                        const SizedBox(height: 10,),
                        GestureDetector(
                          onTap: (){
                            try{
                              context.goNamed(SignInScreen.routeName);
                            }catch(e){
                              print(e);
                            }
                          },
                          child: Text("Log in with Phone and Password",
                            style:Styles.heading4(context).copyWith(color: Styles.appPrimaryColor, decoration: TextDecoration.underline),),
                        ),

                        SizedBox(height: 20,),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Terms and conditions apply.  ',
                                style: Styles.heading4(context).copyWith(color: Colors.black54),
                              ),
                              TextSpan(
                                text: 'Privacy Policy',

                                style: Styles.heading4(context).copyWith(color: Colors.blue, decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = launchPrivacyPolicy,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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

