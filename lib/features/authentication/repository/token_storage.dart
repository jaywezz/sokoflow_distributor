import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/phone_login_screen.dart';
import 'package:nested_navigation_gorouter_example/services/go_router_config_service.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';

import '../../../app_constants/storage_keys.dart';

class TokenStorage {

  Future<void> storeAccessToken(String accessToken) {
    return const FlutterSecureStorage().write(
      key: StorageKeys.accessToken,
      value: accessToken,
    );
  }

  Future<String?> getAccessToken() {
    return const FlutterSecureStorage().read(
      key: StorageKeys.accessToken,
    );
  }

  Future<bool> hasToken() async {
    final String? accessToken = await getAccessToken();
    return accessToken != null;
  }

  Future<void> removeAccessToken()async {
    Isar isar = await IsarService().db;

    rootNavigatorKey.currentContext!.pushReplacementNamed(PhoneLoginScreen.routeName);
    await isar.writeTxn(() async {
      await isar.users.clear(); // insert & update
    });
    return const FlutterSecureStorage().delete(
      key: StorageKeys.accessToken,
    );
  }

  Future clear() {
    return Future.wait([
      removeAccessToken(),
    ]);
  }
}
