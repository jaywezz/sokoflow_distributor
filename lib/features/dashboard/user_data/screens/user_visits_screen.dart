import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../utils/app_constants.dart';
import '../../../../utils/responsive.dart';
import '../../../../utils/styles.dart';
import '../models/user_visits_model.dart';
import '../user_data_provider.dart';
import '../user_data_repository.dart';


class UserVisitsScreen extends ConsumerStatefulWidget {
  static const routeName = "user_visits";
  const UserVisitsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<UserVisitsScreen> createState() => _UserVisitsScreenState();
}

class _UserVisitsScreenState extends ConsumerState<UserVisitsScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  List<DateTime> dateRange = [];

  // final OrdersController ordersController = Get.put(OrdersController(widget.customer_id!));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ref.watch(userVisitsProvider).when(data: (data){
            List<UserVisitsModel> visits = [];
            if (dateRange.isNotEmpty) {
              visits = data
                  .where((item) =>
              item.formattedDate!.isAfter(dateRange[0]) &&
                  item.formattedDate!.isBefore(dateRange[1]))
                  .toList();
            } else {
              visits =data;
            }
            return SizedBox(
              height: double.infinity,
              width: double.infinity,

              //color: Styles.appBackgroundColor,
              child: Container(
                padding: EdgeInsets.only(
                  left: defaultPadding(context),
                  right: defaultPadding(context),
                ),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
                    borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(30))),
                child: Column(
                  children: [
                    SizedBox(
                      height: defaultPadding(context),
                    ),
                    Stack(
                      children: [
                        Material(
                          child: InkWell(
                            splashColor: Theme.of(context).splashColor,
                            onTap: () => Navigator.pop(context),
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'My Customer Visits',
                            style: Styles.heading3(context),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding(context) * 1.3,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Filter By: ",
                          style: Styles.heading3(context),
                        )),
                    SizedBox(
                      height: defaultPadding(context) * 1.3,
                    ),
                    SizedBox(
                      height: 30,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      content: SizedBox(
                                        height:
                                        MediaQuery.of(context).size.height *
                                            .45,
                                        width: MediaQuery.of(context).size.width *
                                            .8,
                                        child: Column(
                                          children: [
                                            Text(
                                              "Select Date Range",
                                              style: Styles.heading2(context),
                                            ),
                                            SfDateRangePicker(
                                              monthCellStyle:
                                              DateRangePickerMonthCellStyle(
                                                  textStyle:
                                                  Styles.heading4(context)
                                                      .copyWith(
                                                      fontWeight:
                                                      FontWeight
                                                          .w700)),
                                              onSelectionChanged:
                                                  (DateRangePickerSelectionChangedArgs
                                              args) {
                                                print(
                                                    "start '${args.value.startDate}");
                                                print(
                                                    "end '${args.value.endDate ?? args.value.startDate}");
                                                setState(() {
                                                  dateRange = [
                                                    args.value.startDate,
                                                    args.value.endDate ??
                                                        args.value.startDate
                                                  ];
                                                  // selectedDateRange =
                                                  // "${DateFormat.yMd().format(dateRange[0])} - ${DateFormat.yMd().format(dateRange[1])}";
                                                });
                                              },
                                              selectionMode:
                                              DateRangePickerSelectionMode
                                                  .range,
                                            ),
                                            Divider(
                                              color: Colors.grey[200],
                                              thickness: 2,
                                            ),
                                            // Text("Time", style: Styles.heading3(context),),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'Ok',
                                            style: Styles.heading3(context)
                                                .copyWith(
                                                color:
                                                Styles.appSecondaryColor),
                                          ),
                                        ),
                                      ],
                                    );
                                  });
                            },
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: dateRange.isEmpty
                                        ? Colors.white54
                                        : Styles.appSecondaryColor,
                                    border: Border.all(
                                        color:
                                        dateRange.isEmpty
                                            ? Styles.appYellowColor
                                            : Colors.transparent,
                                        width: 2),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    children: [
                                      dateRange.isEmpty
                                          ? Text(
                                        dateRange.isNotEmpty
                                            ?"${DateFormat.yMd().format(dateRange[0])} - ${DateFormat.yMd().format(dateRange[1])}"
                                            : "Date Visited",
                                        style: Styles.heading3(context),
                                      )
                                          : Text(
                                        "${DateFormat.yMd().format(dateRange[0])} - ${DateFormat.yMd().format(dateRange[1])}",
                                        style: Styles.heading3(context)
                                            .copyWith(color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      !dateRange.isEmpty
                                          ? InkWell(
                                          onTap: () {
                                            print("press");
                                            dateRange =[];
                                            setState(() {});
                                          },
                                          child: Icon(
                                            Icons.close,
                                            color: Styles.appYellowColor,
                                          ))
                                          : Icon(Icons.keyboard_arrow_down)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 10.w,
                          ),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  dateRange = [];
                                });
                              },
                              child: Text(
                                "Clear Filter",
                                style: Styles.heading3(context)
                                    .copyWith(color: Colors.blue),
                              ))
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: visits.isEmpty
                          ? RefreshIndicator(
                        onRefresh: () async {
                          await ref.watch(userDataRepo).getUserVisits();
                          return ref.refresh(userVisitsProvider);
                        },
                        child: SingleChildScrollView(
                            child: Text(
                              "No visits made",
                              style: Styles.heading3(context)
                                  .copyWith(color: Colors.black45),
                            )),
                      )
                          : RefreshIndicator(
                        onRefresh: () async {
                          await ref.watch(userDataRepo).getUserVisits();
                          return ref.refresh(userVisitsProvider);
                        },
                        child: ListView.builder(
                            physics: AlwaysScrollableScrollPhysics(),
                            itemCount: visits.length,
                            itemBuilder: ((context, index) {
                              return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0),
                                  child: VisitsCard(context, visits[index]));
                            })),
                      ),
                    )
                  ],
                ),
              ),
            );

          },
              error: (e,s){
                return Center(
                  child: Text("An error occurred",
                    style: Styles.heading3(context).copyWith(
                        color: Colors.redAccent),),
                );},
              loading: (){
                return Center(child: CircularProgressIndicator());
              })
      ),
    );
  }

  Widget VisitsCard(BuildContext context, UserVisitsModel visit) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        width: Responsive.isMobile(context) ? 250 : 350,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(defaultPadding(context))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 14),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            visit.customerName!,
                            style: Styles.heading3(context),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Start time : ${visit.startTime}",
                        style: Styles.smallGreyText(context)
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "End time : ${visit.stopTime}",
                        style: Styles.smallGreyText(context)
                            .copyWith(fontWeight: FontWeight.w600),
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0.sp),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.sp)),
                              color: Colors.green),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Text(
                              visit.durationSeconds!> 60?"${Duration(seconds: visit.durationSeconds!).inMinutes.toString()} min"
                                  :"${visit.durationSeconds} seconds",
                              style: Styles.heading4(context)
                                  .copyWith(color: Colors.white),)
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        DateFormat.yMMMd().format(visit.formattedDate!),
                        style: Styles.heading4(context).copyWith(color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}

