import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';

import 'features/authentication/screens/phone_login_screen.dart';


Logger _log = Logger(
  printer: PrettyPrinter(),
);

class SplashScreenPage extends ConsumerStatefulWidget {
  static const routeName = 'splash_screen_page';
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      SplashScreenPageState();
}

class SplashScreenPageState extends ConsumerState<SplashScreenPage> {
  // bool isLoggedin = false;


  @override
  void initState() {
    print("splash init");
    _checkUser();
    super.initState();
    //Get.find<ProductCategoryController>().getProductCategories();
    // _loadResource();
  }

  @override
  Future<void> didChangeDependencies() async{

    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Logger().i(MediaQuery.of(context).size.width);
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white
              // image: DecorationImage(
              //     image: AssetImage(
              //       'assets/images/bg.png',
              //     ),
              //     fit: BoxFit.fill),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                        color: Colors.transparent,
                        height: 200.h,
                        width: 300.h,
                        child: const Image(
                            image: AssetImage(
                              'assets/logos/play_store_512.png',
                            ))),
                  ),

                ],
              ),
            )));
    // Image(image: AssetImage('assets/logos/Fresh Life Logo_Horizontal.png'))
  }

  // var storage = const FlutterSecureStorage();
  int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

  _checkUser() async {
    print("chcking user");

    bool isValidToken = true;

    print("after open box");
    Future.delayed(const Duration(milliseconds: 3000)).then((value) async {
      if (await TokenStorage().hasToken()) {
        if(!mounted) return;
        context.go('/dashBoard');
      } else {
        //else, remain at login page
        if(!mounted) return;
        // context.go('/login');
        context.goNamed(PhoneLoginScreen.routeName);
      }

    });
  }

// Future<void> _loadResource() async {
//   Get.find<AuthController>().userLoggedIn();
// }
}
