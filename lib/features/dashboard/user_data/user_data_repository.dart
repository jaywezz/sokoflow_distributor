import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../services/dio_service/api_handler.dart';
import '../../../services/dio_service/dio_exceptions.dart';
import '../../../services/dio_service/network_service.dart';
import 'models/user_visits_model.dart';



final userDataRepo =
Provider<UserDataRepository>((ref) => UserDataRepository(ref));

class UserDataRepository{
  final Ref read;
  UserDataRepository(this.read);

  Future<List<UserVisitsModel>> getUserVisits() async {
    try {
      final res = await ApiHandler.doGet(
        dio:read.read(networkServiceProvider),
        url: "/all/my-visits",);
      final visits = visitsListFromJson(res.data["visits"]);
      return visits;
    } on DioError catch (e) {
      throw DioExceptions.fromDioError(e);
    }catch(e,s){
      print(e);
      print(s);
      throw e;
    }
  }

}
