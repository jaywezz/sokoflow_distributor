import 'package:dio/dio.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';

/// NetworkServiceInterceptor will override the onRequest method from  Dio Interceptor class
/// onRequest method will add out custom headers

class NetworkServiceInterceptor extends Interceptor {
  NetworkServiceInterceptor();

  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    // Read the access token form the secure storage
    final accessToken =await TokenStorage().getAccessToken();

    if (accessToken != null) {
      options.headers['Accept'] = 'application/json';
      options.headers['contentType'] = 'application/json';
      options.headers['Authorization'] = 'Bearer $accessToken';
    } else {
      options.headers['Accept'] = 'application/json';
      options.headers['contentType'] = 'application/json';
    }

    super.onRequest(options, handler);
  }
}