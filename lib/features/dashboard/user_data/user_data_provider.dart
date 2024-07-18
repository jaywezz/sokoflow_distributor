
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/user_data/user_data_repository.dart';

import 'models/user_visits_model.dart';



final userVisitsProvider = FutureProvider<List<UserVisitsModel>>((ref) async {
  final visits = await ref.watch(userDataRepo).getUserVisits();
  return visits;
});
