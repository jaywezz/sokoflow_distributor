import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/api_handler.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/dio_exceptions.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/network_service.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../authentication/repository/auth_repo.dart';
import '../models/checkout_form_model/checkin_model.dart';
import '../models/leads_model/leads_model.dart';

final orderRepository =
Provider<OrdersRepository>((ref) => OrdersRepository(ref));


class OrdersRepository extends StateNotifier {
  final Ref _reader;

  OrdersRepository(this._reader) : super(0);

  Future<List<LeadsModel>> getPendingOrders()async{
    try {
      final res = await ApiHandler.doGet(
        dio:_reader.read(networkServiceProvider),
        url: "/leads",);
      List<LeadsModel> leads = leadsFromJson(res.data["data"]);
    } on DioException catch (e, s) {
      rethrow;
    } catch (e, s) {
      print(s);
      print(e);
      _reader.read(isRefreshProvider.state).state = false;
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response?> createLead(LeadsModel data)async{
    Isar isar = await IsarService().db;

    try {
      data.createdAt = DateTime.now();
      print(await _reader.read(authRepositoryProvider).getOnlineStatus());
      if(await _reader.read(authRepositoryProvider).getOnlineStatus() == false){
        await isar.writeTxn(() async {
          data.offline = true;
          await isar.leadsModels.put(data); // insert & update
        });
        return null;
      }else{
        final res = await ApiHandler.doPost(
            dio:_reader.read(networkServiceProvider),
            url: "/leads/add-leads",
            data: data.toJson()
        );
        return res;
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      print(e);
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> customerCheckout(var data)async{
    Isar isar = await IsarService().db;
    try {
      CheckInModel? checkInModel = await isar.checkInModels.filter()
          .statusEqualTo('Active', caseSensitive: false)
          .limit(1).findFirst();
      if(checkInModel != null){
        final res = await ApiHandler.doGet(
            dio:_reader.read(networkServiceProvider),
            url: "/checkin/${checkInModel.checkinCode}/out",
            data: data
        );
        await isar.writeTxn(() async {
          await isar.checkInModels.clear(); // insert & update
        });
        return res;
      }else{
        throw "No active check-in";
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      print(e);
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> customerCheckIn(CheckInModel checkInModel)async{
    Isar isar = await IsarService().db;
    User? user = await isar.users.where().findFirst();
    try {
      var data = {
        "customerID": checkInModel.customerId,
        "user_code": user!.userCode,
        "latitude": checkInModel.latitude,
        "longitude": checkInModel.longitude
      };
      final res = await ApiHandler.doPost(
          dio:_reader.read(networkServiceProvider),
          url: "/customer/checkin/session",
          data: data
      );
      checkInModel.checkinCode = res.data["checking Code"];
      await isar.writeTxn(() async {
        await isar.checkInModels.put(checkInModel); // insert & update
      });
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        checkInModel.offline = true;
        await isar.writeTxn(() async {
          await isar.checkInModels.put(checkInModel); // insert & update
        });
        throw "Offline";
      }else{
        throw message;
      }
      throw message;
    } catch (e, s) {
      print(e);
      throw "An unknown error occurred. Try again later";
    }
  }

  Future updateLeadToConverted(int id)async{
    Isar isar = await IsarService().db;
    await isar.writeTxn(() async {
      final query = isar.leadsModels.filter().customerIdEqualTo(id).build();
      LeadsModel? data = await query.findFirst();
      await query.deleteAll();//clear db to insert new record//clear db to insert new record
      if(data != null){
        data.converted = true;
        await isar.leadsModels.put(data);
      }
    });
  }

}


