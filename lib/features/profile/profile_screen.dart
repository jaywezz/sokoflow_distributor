
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

import '../../lang/locale_keys.g.dart';
import '../sales/pending_orders/provider/leads_provider.dart';
class ProfileScreen extends ConsumerStatefulWidget {
  static const route_name = "profile";
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  User? user;
  getUser()async{
    Isar isar = await IsarService().db;
    user = await isar.users.where().findFirst();
    setState(() {});
  }
  @override
  void initState() {
    // TODO: implement initState
    getUser();
    super.initState();
  }
  // Salesperson? salesperson;
  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(10.sp),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Styles.appPrimaryLightColor)),
                      child: Stack(
                        children: [
                          Center(
                            child: CircleAvatar(
                                backgroundColor: Styles.appSecondaryColor,
                                radius: 55.r,
                                backgroundImage: NetworkImage(
                                    "")),
                            // "https://images.unsplash.com/photo-1513152697235-fe74c283646a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=948&q=80")),
                          ),

                        ],
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(user ==null? "..":user!.name!,
                      style: Styles.formNameText(context)
                          .copyWith(fontSize: 16.sp)),
                  SizedBox(height: 5.h),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                          "Email: ${user ==null? "..":user!.email!}",
                          style: Styles.smallGreyText(context)
                              .copyWith(fontSize: 12.sp)),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Center(
                  //     child: Text(
                  //         "Location: ${user ==null? "..":user!.location??"None"}",
                  //         style: Styles.smallGreyText(context)
                  //             .copyWith(fontSize: 12.sp)),
                  //   ),
                  // )
                  // :Center(
                  //   child: Column(
                  //     children: [
                  //       for(Salesperson area in data.user!.salesperson!)
                  //          Text(
                  //         "Work Areas: "
                  //             "${area.subareaName}, ${area.area}, \n",
                  //         style: Styles.smallGreyText(context)
                  //             .copyWith(fontSize: 12.sp)),
                  //     ],
                  //   ),

                  // child: Text(
                  // "Work Areas: "
                  //     "${data.userData!.subareas![0].region!}, ${data.userData!.subareas![0].area!}, ${data.userData!.subareas![0].subareaName!} and "
                  //     "${data.userData!.subareas![1].region!}, ${data.userData!.subareas![1].area!}, ${data.userData!.subareas![1].subareaName!}",
                  // style: Styles.smallGreyText(context)
                  //     .copyWith(fontSize: 12.sp)),
                  // ) ,
                ],
              )



            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
            child: Center(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50.sp),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ref.watch(pendingOrdersProvider).when(data: (data){
                            return RichText(
                              text: TextSpan(
                                  text: '${LocaleKeys.total_engaged.tr()}\n',
                                  style: Styles.heading4(context).copyWith(
                                      color: Colors.black87,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: data.length.toString(),
                                        style: Styles.normalText(context)
                                            .copyWith(
                                            color: Colors.black54,
                                            fontSize:10,
                                            fontWeight: FontWeight.w700))
                                  ]),
                            );
                          }, error: (e,s){
                            return Text("Error", style: Styles.heading3(context).copyWith(color: Colors.red),);

                          }, loading: (){
                            return Text("..");
                          }),

                          const VerticalDivider(
                            color: Colors.black38,
                            thickness: 1,
                          ),
                          RichText(
                            text: TextSpan(
                                text: '${LocaleKeys.total_leads.tr()}\n',
                                style: Styles.heading4(context).copyWith(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '0',
                                      style: Styles.normalText(context)
                                          .copyWith(
                                          color: Colors.black54,
                                          fontSize:10,
                                          fontWeight: FontWeight.w700))
                                ]),
                          ),

                          const VerticalDivider(
                            color: Colors.black38,
                            thickness: 1,
                          ),
                          RichText(
                            text: TextSpan(
                                text: '${LocaleKeys.customers.tr()}\n',
                                style: Styles.heading4(context).copyWith(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "9",
                                      style: Styles.normalText(context)
                                          .copyWith(
                                          color: Colors.black54,
                                          fontSize:10,
                                          fontWeight: FontWeight.w700))
                                ]),
                          ),



                          const VerticalDivider(
                            color: Colors.black38,
                            thickness: 1,
                          ),

                        ],
                      ),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: MediaQuery.of(context).size.height * .5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.sp),
                  color: Styles.appPrimaryLightColor),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                    child: FullWidthButton(
                      action: () {
                        context.push("/dashBoard/reports");

                      },
                      btnheight: 50.h,
                      color: Colors.white,
                      child: Text(
                        LocaleKeys.view_my_reports.tr(),
                        style: Styles.heading3(context)
                            .copyWith(color: Styles.appPrimaryLightColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  InkWell(
                    onTap: ()async{
                      await TokenStorage().removeAccessToken();
                      showCustomSnackBar("Successfully logged out", bgColor: Colors.green);
                    },
                    child: Text(
                      LocaleKeys.logout.tr(),
                      style: Styles.normalText(context)
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]);
  }
}
