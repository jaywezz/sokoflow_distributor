import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/auth_repo.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/otp_login2.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/otp_login_screen.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/otp_screen.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';

final userDataProvider = FutureProvider.family<User?, BuildContext>((ref, context)async {
  Isar isar = await IsarService().db;
  User? user = await isar.users.where().findFirst();
  if(user == null){
    showCustomSnackBar("User info not found. Login");
    context.pushReplacement("/login");
    return null;
  }else{
    return user;
  }

});



final authNotifier =
StateNotifierProvider<AuthNotifier, AsyncValue>((ref) {
  return AuthNotifier(read: ref);
});


class AuthNotifier extends StateNotifier<AsyncValue> {
  AuthNotifier({required this.read})
      : super(const AsyncValue.data(null));
  Ref read;

  Future<void> phonePasswordLogin(String phoneNumber, String password, BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      final responseModel = await read.read(authRepositoryProvider).phonePasswordLogin(phoneNumber, password);
      showCustomSnackBar("Successfully logged in.", isError: false, bgColor: Colors.green);
      if (!mounted) return;
      state = AsyncValue.data(responseModel);
      context.go('/dashboard');
    } catch (e, s) {
      print(s);
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> otpLogin(String phoneNumber, String otp,  BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      final responseModel = await read.read(authRepositoryProvider).otpLogin(phoneNumber, otp);
      showCustomSnackBar("Login Successful.", isError: false,  bgColor: Colors.green);
      if (!mounted) return;
      context.go('/dashboard');
      if(!mounted) return;
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> sendOtp(String phoneNumber,  BuildContext context, bool isLogin) async {
    state = const AsyncValue.loading();
    try {
      final responseModel = await read.read(authRepositoryProvider).sendOtp(phoneNumber);
      if(!mounted) return;
      showCustomSnackBar("Otp sent successfully.", isError: false,  bgColor: Colors.green);
      context.goNamed(OtpLogin2.routeName,  extra: {"phone":phoneNumber, "otp": responseModel.data["otp"]});
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }



  Future<void> verifyOtp(String phoneNumber, String otp,  BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      final responseModel = await read.read(authRepositoryProvider).verifyOtp(phoneNumber, otp);
      showCustomSnackBar("Otp Verified.", isError: false);
      if(!mounted) return;
      context.go('/login/reset-password', extra: phoneNumber);
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> resetPassword(String phoneNumber, String password, String confirmPassword,  BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      final responseModel = await read.read(authRepositoryProvider)
          .resetPassword(password, confirmPassword, phoneNumber);
      showCustomSnackBar("Password changed successfully.", isError: false,  bgColor: Colors.green);
      if(!mounted) return;
      context.go('/login/reset-success');
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }
}