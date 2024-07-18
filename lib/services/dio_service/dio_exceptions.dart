import 'package:dio/dio.dart';
import 'package:nested_navigation_gorouter_example/app_constants/urls.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(
      DioError dioError,
      ) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Connection cancelled by user";
        break;
      case DioErrorType.connectionTimeout:
        message = "Connection TimeOut";
        break;
      case DioExceptionType.receiveTimeout:
        message = "Receive Timeout";
        break;
      case DioExceptionType.connectionError:
        message = "Connection TimeOut";
        break;
      case DioExceptionType.badResponse:
        print("bad response: ${dioError.response?.statusCode}");
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response!,
        );
        break;
      case DioErrorType.sendTimeout:
        message = "TimeOut";
        break;
      case DioErrorType.unknown:
        if (dioError.message!.contains("SocketException")) {
          message = 'No Internet!! Ensure You Have An Active Internet Connection';
          break;
        }
        message = "Unexpected error occurred";
        break;
      default:
        message = "No internet connection";
        break;
    }
  }

  String _handleError(int? statusCode, Response error,) {
    print("handling error");
    switch (statusCode) {
      case 400:
        return error.data["message"];
      case 401:
        print("the uri:${error.realUri.path}");
        if(error.realUri.path != "/urban-waters/api/login"){
          TokenStorage().removeAccessToken();
          showCustomSnackBar("Authentication session expired", bgColor: Styles.appPrimaryColor);
        }
        return 'Unauthorized';
      case 403:
        return error.data["message"];
      case 404:
        return "Url Not found";
      case 422:
        return error.data["message"];
      case 406:
        return error.data["message"];
      case 500:
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return error.data["message"];
    }
  }

  @override
  String toString() => message;
}