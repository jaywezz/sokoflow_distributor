import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/lang/locale_keys.g.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';


Logger _log = Logger(printer: PrettyPrinter());

class MainDrawer extends ConsumerStatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  ConsumerState<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends ConsumerState<MainDrawer> {
  String appName = "";
  String packageName ="";
  String version = "";
  String buildNumber = "";

  User? user;
  getAppVersion()async{
    // PackageInfo packageInfo = await PackageInfo.fromPlatform();

    setState(() {
      // appName = packageInfo.appName;
      // packageName = packageInfo.packageName;
      version = "1.0.0";
      // buildNumber = packageInfo.buildNumber;
    });
    print("app version: $version");
  }

  getUser()async{
    Isar isar = await IsarService().db;
    user = await isar.users.where().findFirst();
    setState(() {});
  }
  @override
  void initState() {
    getAppVersion();
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Drawer(
        // backgroundColor: Styles.appPrimaryColor,
        elevation: 0,
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .23,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                    // color: Styles.purpleColor
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Styles.purpleColor, width: 1)),
                      child: Padding(
                        padding: EdgeInsets.all(3.0.r),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/logos/play_store_512.png"),
                          maxRadius: 30.r,
                          //SizeConfig.safeBlockHorizontal * 10,
                          minRadius: 20.r,
                          // SizeConfig.safeBlockHorizontal * 10,
                        ),
                      ),
                    ),
                    AutoSizeText(user ==null? "..":user!.name??"No Name",
                        style: Styles.heading2(context)
                            .copyWith(color: Colors.black87)),
                    SizedBox(
                      height: 3.h,
                    ),
                    AutoSizeText(user ==null? "..":user!.email!,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.normalText(context)
                            .copyWith(color: Colors.black87)),
                    SizedBox(
                      height: 3.h,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone_android_sharp, color: Colors.black54, size: 10.sp,),
                        AutoSizeText("App Version: $version",
                            overflow: TextOverflow.ellipsis,
                            style: Styles.normalText(context)
                                .copyWith(fontStyle:FontStyle.italic,color: Colors.black87).copyWith(color: Colors.black54)),
                      ],
                    ),
                  ],
                ),
                    SizedBox(
                      height: 5.h,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height ,
              color: Styles.appPrimaryColor,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListView(
                    shrinkWrap: true,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: DrawerItem(
                          icon: SvgPicture.asset(
                            "assets/icons/Home.svg",
                            matchTextDirection: true,
                            color: Colors.white,
                          ),
                          text: LocaleKeys.home.tr(),
                        ),
                      ),
                      user==null?SizedBox():user!.accountType == AppConstants.deliveryType?SizedBox():SizedBox(
                        height: 5.h,
                      ),
                      user==null?SizedBox():user!.accountType == AppConstants.deliveryType?SizedBox():const Divider(
                        color: Colors.white38,
                      ),
                      user==null?SizedBox():user!.accountType == AppConstants.deliveryType?SizedBox():GestureDetector(
                        onTap: () {
                          context.go("/sales");

                        },
                        child: DrawerItem(
                          icon: SvgPicture.asset(
                            "assets/icons/Customers.svg",
                            matchTextDirection: true,
                            color: Colors.white,
                          ),
                          text: LocaleKeys.leads.tr(),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const Divider(
                        color: Colors.white38,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.go("/schedule");

                        },
                        child: DrawerItem(
                          icon: SvgPicture.asset(
                            "assets/icons/Orders.svg",
                            matchTextDirection: true,
                            color: Colors.white,
                          ),
                          text: LocaleKeys.schedules.tr(),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const Divider(
                        color: Colors.white38,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.go('/profile');

                        },
                        child: DrawerItem(
                          icon: SvgPicture.asset(
                            "assets/icons/Profile.svg",
                            matchTextDirection: true,
                            color: Colors.white,
                          ),
                          text: LocaleKeys.view_profile.tr(),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      // user==null?SizedBox():user!.accountType == AppConstants.deliveryType?const Divider(
                      //   color: Colors.white38,
                      // ):SizedBox(),
                      // user==null?SizedBox():user!.accountType == AppConstants.deliveryType?GestureDetector(
                      //   onTap: () {
                      //     context.go('/dashBoard/inventory');
                      //   },
                      //   child: const DrawerItem(
                      //     icon:Padding(
                      //       padding: EdgeInsets.symmetric(horizontal: 15.0),
                      //       child: Icon(Icons.inventory, color: Colors.white, size: 17,),
                      //     ),
                      //     text: "Inventory",
                      //   ),
                      // ):SizedBox(),
                      // SizedBox(
                      //   height: 5.h,
                      // ),
                      // const Divider(
                      //   color: Colors.white38,
                      // ),
                      // GestureDetector(
                      //   onTap: () {
                      //     context.goNamed(ProductCatalogueScreen.route);
                      //   },
                      //   child: const DrawerItem(
                      //     icon:Padding(
                      //       padding: EdgeInsets.symmetric(horizontal: 15.0),
                      //       child: Icon(Icons.book_outlined, color: Colors.white, size: 17,),
                      //     ),
                      //     text: "Product Catalogue",
                      //   ),
                      // ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const Divider(
                        color: Colors.white38,
                      ),

                      const Divider(
                        color: Colors.white38,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.go('/dashBoard/reports');
                        },
                        child: DrawerItem(
                          icon: SvgPicture.asset(
                            "assets/icons/Reports.svg",
                            matchTextDirection: true,
                            color: Colors.white,
                          ),
                          text: LocaleKeys.reports.tr(),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const Divider(
                        color: Colors.white38,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      // GestureDetector(
                      //   onTap: ()async {
                      //     await ref.read(dataSyncProvider.notifier).upLoadPipeLineData(context).then((value){
                      //       ref.read(dataSyncProvider.notifier).downLoadPipeLineData(context);
                      //     });
                      //     Navigator.pop(context);
                      //   },
                      //   child: DrawerItem(
                      //     icon: Padding(
                      //       padding:  EdgeInsets.only(left: 20.0.sp),
                      //       child: Icon(Icons.sync, size: 20.h, color: Colors.white,),
                      //     ),
                      //     text: "Sync",
                      //   ),
                      // ),
                      SizedBox(
                        height: 5.h,
                      ),
                      GestureDetector(
                        onTap: () async {
                          await TokenStorage().removeAccessToken();
                          showCustomSnackBar("Successfully logged out", bgColor: Colors.green);
                        },
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: DrawerItem(
                            icon: SvgPicture.asset(
                              "assets/icons/Logout.svg",
                              matchTextDirection: true,
                              color: Colors.white,
                            ),
                            text: LocaleKeys.logout.tr(),
                          ),
                        ),
                      ),

                      // GestureDetector(
                      //   onTap: () {
                      //     Navigator.pushNamed(context, GeolocationDataScreen.routeName);
                      //   },
                      //   child: DrawerItem(
                      //     icon: SvgPicture.asset(
                      //       "assets/icons/Orders.svg",
                      //       matchTextDirection: true,
                      //       color: Colors.white,
                      //     ),
                      //     text: "My GeoData",
                      //   ),
                      // ),
                    ],
                  ),
                  // Container(
                  //   // This align moves the children to the bottom
                  //     child: Align(
                  //         alignment: FractionalOffset.bottomCenter,
                  //         // This container holds all the children that will be aligned
                  //         // on the bottom and should not scroll with the above ListView
                  //         child: Container(
                  //             child: Column(
                  //               children: <Widget>[
                  //                 Divider(),
                  //
                  //               ],
                  //             )
                  //         )
                  //     )
                  // )
                ],
              ),
            )
          ],
        ));
  }
}

class DrawerItem extends StatelessWidget {
  final Widget icon;
  final String text;
  const DrawerItem({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListTile(
        minLeadingWidth: 10.w,
        leading: icon,
        title: Text(
          text,
          style: Styles.heading3(context).copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
