import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested_navigation_gorouter_example/features/sales/orders_base_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/widgets/orders_card.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/search_field.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/services/location_service.dart';
import 'package:nested_navigation_gorouter_example/utils/app_utils.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

import '../provider/leads_provider.dart';
import '../repository/leads_repo.dart';

class InProgressOrders extends ConsumerStatefulWidget {
  static const routeName = "inprogress_orders_screen";
  const InProgressOrders({Key? key}) : super(key: key);

  @override
  ConsumerState<InProgressOrders> createState() => _InProgressOrdersState();
}

class _InProgressOrdersState extends ConsumerState<InProgressOrders> {
  TextEditingController regionController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ref.watch(positionProvider).when(data: (location){
      return SingleChildScrollView(
        child: Column(
          children: [
            ref.watch(pendingOrdersProvider).when(
                data: (data){
                  print("search: ${ref.watch(searchController).text}");
                  data = data.where((element) => element.converted == false).toList();
                  if(data.isEmpty){
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("No Orders", style: Styles.heading3(context).copyWith(color: Colors.black54),),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
                            child: FullWidthButton(
                                width: MediaQuery.of(context).size.width * .3,
                                btnheight: 35,
                                text: "Refresh",
                                action: ()async{
                                  ref.watch(isRefreshProvider.state).state = true;
                                  ref.refresh(pendingOrdersProvider);
                                }),
                          )
                        ],
                      ),
                    );
                  }
                  return SizedBox(
                      height: MediaQuery.of(context).size.height *.67,
                      child: RefreshIndicator(
                        onRefresh: ()async{
                          ref.watch(isRefreshProvider.state).state = true;
                          ref.watch(orderRepository).getLeads(true);

                          return await ref.refresh(pendingOrdersProvider);
                        },
                        child: ListView.builder(
                            controller: _scrollController,
                            physics: const AlwaysScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: data.length,
                            itemBuilder: (BuildContext ctx, int index) {
                              double distance = calculateDistance(location!.latitude, location.longitude, double.parse(data[index].latitude!), double.parse(data[index].longitude!));
                              return Container(
                                  margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.01,
                                    left: MediaQuery.of(context).size.width *
                                        0.01,
                                    right: MediaQuery.of(context).size.width * 0.01,
                                  ),
                                  child: OrderCard(color: Styles.inProgressColor,)
                              );
                            }),
                      ));
                },
                error: (error,s){
                  return Center(
                    child: Text(error.toString(),
                      style: Styles.heading3(context).copyWith(color: Colors.redAccent),),
                  );
                }, loading: (){
              return AnimatedCircularProgressIndicator();
            }),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      );
    },
        error: (e,s){
          return Center(
            child: Text(e.toString(),
              style: Styles.heading3(context).copyWith(color: Colors.black54), ),
          );
        }, loading: (){
          return const Center(child: AnimatedCircularProgressIndicator());
        });
  }
}

