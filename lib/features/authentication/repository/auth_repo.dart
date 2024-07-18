import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/app_constants/storage_keys.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/api_handler.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/dio_exceptions.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../services/dio_service/network_service.dart';

final authRepositoryProvider =
Provider<AuthRepository>((ref) => AuthRepository(ref));


class AuthRepository extends StateNotifier {
  final Ref _reader;

  AuthRepository(this._reader) : super(0);

  Future<Response> phonePasswordLogin(String phoneNumber, String password)async{
    Isar isar = await IsarService().db;
    try {
      String fcmToken = "";
      // await FirebaseMessaging.instance.getToken().then((value){
      //   fcm_token = value!;
      //   },
      // );
      final res = await ApiHandler.doPost(
          dio:_reader.read(networkServiceProvider),
          url: "/login",
          data: { "phone_number": phoneNumber,
            "password": password, "device_token": fcmToken,});
      await TokenStorage().storeAccessToken(res.data["access_token"]);
      print("saving data: ${User.fromJson(res.data["user"]).name}");
      await setOnlineStatus(true);
      await isar.writeTxn(() async {
        await isar.users.put(User.fromJson(res.data["user"])); // insert & update
      });
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      print(s);
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> otpLogin(String phoneNumber, String otp)async{
    Isar isar = await IsarService().db;
    try {
      String fcmToken = "";
      // await FirebaseMessaging.instance.getToken().then((value){
      //   fcm_token = value!;
      //   },
      // );
      final res = await ApiHandler.doPost(
          dio:_reader.read(networkServiceProvider),
          url: "/verify/otp/$phoneNumber/$otp",
          data: { "phone_number": phoneNumber,
            "otp": otp, "device_token": fcmToken,});
      await TokenStorage().storeAccessToken(res.data["access_token"]);
      await setOnlineStatus(true);
      print("saving data: ${User.fromJson(res.data["user"]).name}");
      await isar.writeTxn(() async {
        await isar.users.put(User.fromJson(res.data["user"])); // insert & update
      });
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      print(s);
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> sendOtp(String phoneNumber)async{
    try {
      final res = await ApiHandler.doPost(
          dio: _reader.read(networkServiceProvider),
          url: "/send/otp/$phoneNumber",
          data: {"number" : phoneNumber,});
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> resetPassword(String password, String confirmPassword, String phoneNumber)async{
    FlutterSecureStorage tokenStorage = const FlutterSecureStorage();
    try {
      final res = await ApiHandler.doPost(
          dio: _reader.read(networkServiceProvider),
          url: "/reset-password",
          data: {"phone_number" : phoneNumber,
            "password": password,
            "password_confirmation": confirmPassword});
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> verifyOtp(String phoneNumber, String otp)async{
    FlutterSecureStorage tokenStorage = const FlutterSecureStorage();
    try {
      final res = await ApiHandler.doPost(
          dio: _reader.read(networkServiceProvider),
          url: "/verify/otp/$phoneNumber/$otp",
          data: {
            "number" : "0768603211",
            "otp" : "116220"
          });
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
     throw "An unknown error occurred. Try again later";
    }
  }


  Future<bool> getOnlineStatus()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.getBool(StorageKeys.isOnline) != null){
      print("offline status is :${prefs.getBool(StorageKeys.isOnline)}");
      return prefs.getBool(StorageKeys.isOnline)!;
    }else{
      ///put a default of online true
      print("online status is true");
      return true;
    }
  }

  Future setOnlineStatus(bool status)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.getBool(StorageKeys.isOnline) != null){
      prefs.setBool(StorageKeys.isOnline, status);
    }else{
      ///set a default of online true
      prefs.setBool(StorageKeys.isOnline, status);
      print("setting online status to: true");
    }
  }


}


