import 'package:dio/dio.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';

class ApiHandler {
  static Future<Response> doPost(
      {required Dio dio, required String url, required dynamic data, String? token}) async {
    Response response = await dio.post(
        url, data: data);

    if (response.statusCode == 401 && url != "/login") {
      TokenStorage().removeAccessToken();
    }
    return response;
  }

  static Future<Response> doGet({required String url, required Dio dio, dynamic data}) async {

    Response response = await dio.get(url, data: data);
    //throw error
    if (response.statusCode == 401) {
      print("the response is 401");
      await TokenStorage().removeAccessToken();
    }
    return response;
  }

  static doPut(Dio dio, data, url) async {
    Response response = await dio.put(url, data: data);

    if (response.statusCode == 401) {
      TokenStorage().removeAccessToken();
    }
    return response;
  }

  static sendFile(
      {required Dio dio, required dynamic data, required String url}) async {
    Response response = await dio.post(url, data: data);

    if (response.statusCode == 401) {
      TokenStorage().removeAccessToken();
    }
    return response;
  }
}