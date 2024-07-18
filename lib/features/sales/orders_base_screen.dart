
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nested_navigation_gorouter_example/features/sales/pending_orders/screens/completed_orders_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/pending_orders/screens/in_progress_orders.dart';
import 'package:nested_navigation_gorouter_example/features/sales/pending_orders/screens/pending_orders_screen.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/search_field.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/pill_button.dart';

import '../../lang/locale_keys.g.dart';

final searchController = StateProvider<TextEditingController>((ref) => TextEditingController());
final currentIndexProvider = StateProvider<int>((ref) => 0);

class OrdersBaseScreen extends ConsumerStatefulWidget {
  static const route_name = "orders_screen";
  const OrdersBaseScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<OrdersBaseScreen> createState() => _OrdersBaseScreenState();
}

class _OrdersBaseScreenState extends ConsumerState<OrdersBaseScreen> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late TabController _tabController;
  // int currentIndex = 0;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener((() {
      setState(() {
        ref.watch(currentIndexProvider.state).state = _tabController.index;
      });
    }));

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return WillPopScope(
      onWillPop: ()async {
        // Navigator.pushNamed(context, BaseScreen.route_name);
        return true;
      },
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/bg.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LargeSearchField(
                  textEditingController: ref.watch(searchController),
                  onChanged: (value){

                  },
                  onTapClose: (){
                    setState(() {
                      ref.watch(searchController).text = "";
                    });
                  }),
            ),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w),
              child: SizedBox(
                height: ScreenUtil.defaultSize.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(
                      height: 35.h,
                      child: ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          PillButton(
                              selected: ref.watch(currentIndexProvider) == 0 ? true : false,
                              action: () {
                                ref.watch(searchController).text = "";
                                setState(() {
                                  _tabController.animateTo(0);
                                });
                              },
                              text:'Pending Orders'),
                          SizedBox(
                            width: 5.w,
                          ),
                          PillButton(
                              selected: ref.watch(currentIndexProvider) == 1 ? true : false,
                              action: () {
                                ref.watch(searchController).text = "";
                                setState(() {
                                  _tabController.animateTo(1);
                                });
                              },
                              text: 'In Progress'),
                          SizedBox(
                            width: 5.w,
                          ),
                          PillButton(
                              selected: ref.watch(currentIndexProvider) == 2 ? true : false,
                              action: () {
                                ref.watch(searchController).text = "";
                                setState(() {
                                  _tabController.animateTo(2);
                                });
                              },
                              text: 'Completed Orders'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Expanded(
                      child: TabBarView(controller: _tabController, children: const [
                        PendingOrders(),
                        InProgressOrders(),
                        CompletedOrders()
                      ]),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
