import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/auth_repo.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/home_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/orders_base_screen.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/services/location_service.dart';
import 'package:nested_navigation_gorouter_example/services/notification_service.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

import '../../../dashboard/root_screen.dart';
import '../models/checkout_form_model/checkout_model.dart';
import '../models/leads_model/leads_model.dart';
import '../models/regions_model/region_model.dart';
import '../repository/leads_repo.dart';


final pendingOrdersProvider = FutureProvider<List<LeadsModel>>((ref) async {
  final leads = await ref.watch(orderRepository).getLeads(true);
  if(ref.watch(searchController).text != ""){
    return leads.where((element) => element.customerName!.toLowerCase().contains(ref.watch(searchController).text.toLowerCase())).toList();
  }else{
    return leads.reversed.toList();
  }
});

final leadsNotifier =
StateNotifierProvider<LeadsNotifier, AsyncValue>((ref) {
  return LeadsNotifier(read: ref);
});


class LeadsNotifier extends StateNotifier<AsyncValue> {
  LeadsNotifier({required this.read})
      : super(const AsyncValue.data(null));
  Ref read;

  late Timer _timer;
  void startTimer() {
    print("again on timer");
    const period = const Duration(seconds: 1);
    _timer = Timer.periodic(period, (timer) {
      read.read(checkinTimeProvider.state).state++;
    });
  }
}

final leadsFormData = StateProvider<LeadsModel>((ref) => LeadsModel(
    // id: ,
    leadSource: "Self Sourced",
    leadType: "Individual"
));
final checkOutFormData = StateProvider<CheckOutModel>((ref) => CheckOutModel(
  didLeadMakeOrder: "Yes"
));