import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

import 'drive_to_customer.dart';
 class OrderCard extends ConsumerStatefulWidget {
   final Color? color;
   const OrderCard({Key? key, this.color }) : super(key: key);

   @override
   ConsumerState<OrderCard> createState() => _OrderCardState();
 }

 class _OrderCardState extends ConsumerState<OrderCard> {
   bool isLoading = false;
   @override
   Widget build(BuildContext context) {
     return Card(
       elevation: 1,
       color: Colors.white,
       shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10)
       ),
       // child: ListTile(
       //     leading: Container(
       //       alignment: Alignment.center,
       //       decoration: BoxDecoration(
       //           color: widget.color,
       //           borderRadius: BorderRadius.circular(10.sp)
       //       ),
       //
       //       height: 60.h,
       //       width: MediaQuery.of(context).size.width*0.15.sp,
       //       child: Text("N", style: Styles.heading2(context).copyWith(color: Colors.white)
       //       ),
       //     ),
       //     title: Align(
       //       alignment: Alignment.centerLeft,
       //       child: SizedBox(
       //         height: 13.h,
       //         child: FittedBox(
       //           fit: BoxFit.fitHeight,
       //           child: Text(
       //               "Heavens Duka",
       //               style: Styles.heading2(context)
       //           ),
       //         ),
       //       ),
       //     ),
       //     subtitle: Text(
       //         "Moi Avenue, Nairobi, Kenya",
       //         style: Styles.smallGreyText(context)
       //     ),
       //     trailing: Row(
       //       mainAxisSize: MainAxisSize.min,
       //       children: [
       //         Column(
       //           children: [
       //
       //             Row(
       //               children: [
       //                 ClipRRect(
       //                   borderRadius: BorderRadius.circular(10),
       //                   child: Container(
       //                       padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
       //                       color:  Colors.white,
       //                       child: FaIcon(FontAwesomeIcons.map)
       //                   ),
       //                 ),
       //                 SizedBox(width: 1,),
       //                 ClipRRect(
       //                   borderRadius: BorderRadius.circular(10),
       //                   child: Container(
       //                     padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
       //                     color:  Styles.appPrimaryLightColor,
       //                     child: Text("30 Km",
       //                       style: Styles.heading4(context).copyWith(color: Colors.white),
       //                     )
       //                   ),
       //                 ),
       //               ],
       //             ),
       //             SizedBox(height: 3,),
       //             ClipRRect(
       //               borderRadius: BorderRadius.circular(10),
       //               child: Container(
       //                   padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
       //                   color:  Styles.inProgressColor,
       //                   child: Text("In Progress",
       //                     style: Styles.heading4(context).copyWith(color: Colors.white),
       //                   )
       //               ),
       //             ),
       //
       //           ],
       //         ),
       //       ],
       //     )
       // ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Container(
             alignment: Alignment.center,
             decoration: BoxDecoration(
                 color: widget.color,
                 borderRadius: BorderRadius.circular(10.sp)
             ),

             height: 50.h,
             width: MediaQuery.of(context).size.width*0.15.sp,
             child: Text('N', style: Styles.heading2(context).copyWith(color: Colors.white)
             ),
           ),
           Container(
             margin: EdgeInsets.only(
               left: MediaQuery.of(context).size.width*0.03,
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(
                   height: 13.h,
                   child: FittedBox(
                     fit: BoxFit.fitHeight,
                     child: Text(
                         "Heavens Duka",
                         style: Styles.heading2(context)
                     ),
                   ),
                 ),
                 SizedBox(height: 5.h,),
                 Text(
                     "Moi Avenue, Nairobi, Kenya",
                     style: Styles.smallGreyText(context)
                 ),

               ],
             ),

           ),

           SizedBox(width: MediaQuery.of(context).size.width * .09,),
          Row(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Column(
                   children: [

                     Row(
                       children: [
                         ClipRRect(
                           borderRadius: BorderRadius.circular(10),
                           child: Container(
                               padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                               color:  Colors.white,
                               child: FaIcon(FontAwesomeIcons.map)
                           ),
                         ),
                         SizedBox(width: 1,),
                         ClipRRect(
                           borderRadius: BorderRadius.circular(10),
                           child: Container(
                             padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                             color:  Styles.appPrimaryLightColor,
                             child: Text("30 Km",
                               style: Styles.heading4(context).copyWith(color: Colors.white),
                             )
                           ),
                         ),
                       ],
                     ),
                     SizedBox(height: 3,),
                     ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: Container(
                           padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                           color:  Styles.inProgressColor,
                           child: Text("In Progress",
                             style: Styles.heading4(context).copyWith(color: Colors.white),
                           )
                       ),
                     ),

                   ],
                 ),]),
           // Align(
           //   alignment: Alignment.centerRight,
           //   child: Row(
           //     children: [
           //       // customer!.requiresAction!?Icon(Icons.info_outline, size: 16.sp, color: Colors.redAccent,):Container(),
           //       GestureDetector(
           //           onTap: (){
           //             print("clicked");
           //             Navigator.of(context).push(
           //                 MaterialPageRoute(
           //                     builder: (context) =>
           //                         const CustomerTrackingPage(
           //                           shopName: "Heavens Duka",
           //                           sourceLocation: LatLng(0.0, 0.0),
           //                           destination: LatLng(0.0, 0.0),
           //                         )));
           //             // ref.watch(getLocationProvider).whenData((value) => );
           //
           //           },
           //           child: Icon(Icons.pin_drop_outlined, size: 26.sp, color:  Styles.appPrimaryColor,))
           //     ],
           //   )
           // ),

         ],
       ),
     );
   }
 }
