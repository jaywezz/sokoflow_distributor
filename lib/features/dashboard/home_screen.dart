import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/user_data/screens/user_visits_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/widgets/orders_card.dart';

import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';
import 'package:nested_navigation_gorouter_example/utils/formatters/currency_formatter.dart';
import 'package:nested_navigation_gorouter_example/utils/glassmorphism_wrapper.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

import '../../lang/locale_keys.g.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static String routeName = "homeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  User? user;

  getUser()async{
    Isar isar = await IsarService().db;
    user = await isar.users.where().findFirst();

    setState(() {});
  }

  var startDate = DateTime.now();
  String selectedFilter = "Last Week";

  String visitTarget = "0";
  String prospectTarget = "0";
  String visitsAchieved = "0";
  String prospectsAchieved = "0";

  @override
  void initState() {
    // TODO: implement initState
    var d = DateTime.now();
    var weekDay = d.weekday;
    print("the weekday: ${weekDay}");
    if(weekDay != 1){
      setState(() {
        startDate = d.subtract(Duration(days: weekDay - 1));
      });
      print("the start date: ${startDate}");
      print("the today date: ${d}");
    }else{
      setState(() {
        startDate = d;
      });
    }
    getUser();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 4.h,),
                      Text("${LocaleKeys.hello.tr()} ${user ==null? "..":user!.name!.split(" ")[0]},", style: Styles.heading2(context).copyWith(color: Colors.black),),
                      const SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Mon, 13 Dec 2021 - Fri, 17 Dec 2021',
                          textAlign: TextAlign.start,
                          style: Styles.normalText(context).copyWith(fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                      ),
                      // Text("Territory: Kibera", style:  Styles.normalText(context).copyWith(fontWeight: FontWeight.w600, color: Colors.black),),

                    ]
                ),


              ],
            ),
            StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 8,
              children: [
                GlassMorphism(
                  blur: 20,
                  color: Styles.pendingColor,
                  opacity: 0.2,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 2, color: Colors.transparent)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(child: const FaIcon(FontAwesomeIcons.clock, color: Colors.black54, size: 30,)),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0.sp, top: 10.sp, right: 10.sp),
                              child: Text(
                                "Pending Orders",
                                style: Styles.heading4(context).copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 10, right: 10),
                            child: Text(
                              formatCurrency.format(int.parse(visitTarget)),
                              style: Styles.heading2(context).copyWith(),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                      color:Styles.inProgressColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 2, color: Colors.transparent)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(child: const FaIcon(FontAwesomeIcons.truck, color: Colors.white, size: 30,)),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10.0.sp, top: 10.sp, right: 10.sp),
                            child: Text(
                              "In progress",
                              style: Styles.heading4(context).copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10, right: 10),
                          child: Text(
                            formatCurrency.format(int.parse(visitTarget)),
                            style: Styles.heading2(context).copyWith(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color:Styles.completeColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 2, color: Colors.transparent)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Center(child: Text("🎉", style: TextStyle(fontSize: 40),)),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10.0.sp, top: 10.sp, right: 10.sp),
                            child: Text(
                              "Completed Orders",
                              style: Styles.heading4(context).copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10, right: 10),
                          child: Text(
                            formatCurrency.format(int.parse(visitTarget)),
                            style: Styles.heading2(context).copyWith(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),

                //Prospect target
                //Orders
              ],
            ),



            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Orders",
                    style:
                    Styles.heading2(context).copyWith(fontSize: 16),
                  ),
                  TextButton(onPressed: (){}, child: Text("View All", style: Styles.heading3(context),))
                ],
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
              return OrderCard(color: Styles.completeColor,);
            })

          ],
        ),
      ),
    );
  }


}


