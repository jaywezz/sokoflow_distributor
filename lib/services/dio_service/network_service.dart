import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nested_navigation_gorouter_example/app_constants/urls.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/network_service_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


/// Provide the instance of Dio
final networkServiceProvider = Provider.autoDispose<Dio>((ref) {

  final options = BaseOptions(
    baseUrl: UrlConstants.baseUrl,
    connectTimeout: const Duration(seconds: 60),
    sendTimeout: const Duration(seconds: 120),
    receiveTimeout: const Duration(seconds: 60),

  );

  // Add our custom interceptors
  final dio = Dio(options)
    ..interceptors.addAll([
      // HttpFormatter(),
      NetworkServiceInterceptor(),
      // if (kDebugMode)
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
        ),
    ]);

  return dio;
});