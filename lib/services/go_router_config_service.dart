import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/forgot_password_screen.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/login_screen.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/otp_screen.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/reset_password_screen.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/reset_success_screen.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/home_screen.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/root_screen.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/user_data/screens/user_visits_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/widgets/drive_to_customer.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/splash_screen.dart';
import '../features/authentication/screens/otp_login2.dart';
import '../features/authentication/screens/otp_login_screen.dart';
import '../features/authentication/screens/phone_login_screen.dart';


final rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAuthKey = GlobalKey<NavigatorState>(debugLabel: 'auth');
final _shellNavigatorReportsKey = GlobalKey<NavigatorState>(debugLabel: 'reports');
final _shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _shellNavigatorLeadsKey = GlobalKey<NavigatorState>(debugLabel: 'sales');
final _shellNavigatorScheduleKey = GlobalKey<NavigatorState>(debugLabel: 'schedule');
final _shellNavigatorProfileKey = GlobalKey<NavigatorState>(debugLabel: 'profile');
enum AppRoutes{
  confirmStockLift,
}
final goRouter = GoRouter(
  redirect: (BuildContext context, GoRouterState state) async{
    // Replace this method depends on how you are managing your user's
    // Sign in status, then return the appropriate route you want to redirect to,
    // make sure your login/authentication bloc is provided at the top level
    // of your app
    // state.
    print("screen location: ${state.location}");
    return;
  },
  initialLocation: '/splash',
  // * Passing a navigatorKey causes an issue on hot reload:
  // * https://github.com/flutter/flutter/issues/113757#issuecomment-1518421380
  // * However it's still necessary otherwise the navigator pops back to
  // * root on hot reload
  navigatorKey: rootNavigatorKey,

  // debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: "/splash",
      name: SplashScreenPage.routeName,
      pageBuilder: (context, state) =>  const NoTransitionPage(
        child:SplashScreenPage(),
      ),
    ),
    GoRoute(
        path: "/phone-login",
        name: PhoneLoginScreen.routeName,
        pageBuilder: (context, state) =>  const NoTransitionPage(
          child: PhoneLoginScreen(),
        ),
        routes: [
          GoRoute(
              path: "otp-login-screen",
              name: OTPLoginScreen.routeName,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  child: OTPLoginScreen(
                    phoneNumber: (state.extra as Map<String, dynamic>)["phone"],
                  ),
                );
              }
          ),
          GoRoute(
              path: "otp-screen-2",
              name: OtpLogin2.routeName,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  child: OtpLogin2(
                    phoneNumber: (state.extra as Map<String, dynamic>)["phone"],
                    otp: (state.extra as Map<String, dynamic>)["otp"].toString(),
                  ),
                );
              }
          ),
          GoRoute(path: 'login',
              name: SignInScreen.routeName,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: SignInScreen(),
              ),
              routes: [
                GoRoute(
                  path: "forgot-password",
                  name: ForgotPasswordScreen.routeName,
                  pageBuilder: (context, state) =>  const NoTransitionPage(
                    child: ForgotPasswordScreen(),
                  ),
                ),
                GoRoute(
                  path: "otp-screen",
                  name: OTPScreen.routeName,
                  pageBuilder: (context, state) => NoTransitionPage(
                    child: OTPScreen(phoneNumber: state.extra!.toString(),),
                  ),
                ),
                GoRoute(
                  path: "reset-password",
                  name: ResetPasswordScreen.routeName,
                  pageBuilder: (context, state) =>  NoTransitionPage(
                    child: ResetPasswordScreen(phoneNumber: state.extra!.toString(),),
                  ),
                  routes: const [

                  ],
                ),
                GoRoute(
                  path: "reset-success",
                  name: ResetSuccesScreen.routeName,
                  pageBuilder: (context, state) =>  const NoTransitionPage(
                    child: ResetSuccesScreen(),
                  ),
                  routes: const [

                  ],
                ),
              ]
          ),
        ]
    ),

    // Stateful navigation based on:
    // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHomeKey,
          routes: [
            GoRoute(
              path: "/dashBoard",
              name: HomeScreen.routeName,
              pageBuilder: (context, state) =>  const NoTransitionPage(
                child: RootScreen(label: "DashBoard"),
              ),
              routes:  [
                GoRoute(
                    parentNavigatorKey: rootNavigatorKey,
                    path: 'user-visits',
                    name: UserVisitsScreen.routeName,
                    builder: (context, state) => const UserVisitsScreen(),
                ),

              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorLeadsKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: '/sales',
              name: RootScreen.routeName,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: RootScreen(label: 'sales'),
              ),
              routes: [

                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: 'drive-to-customer',
                  builder: (context, state) =>  CustomerTrackingPage(
                    destination: (state.extra as Map<String, dynamic>)["destination"],
                    sourceLocation: (state.extra as Map<String, dynamic>)["source"],
                    shopName: (state.extra as Map<String, dynamic>)["shopName"],),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorScheduleKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: '/schedule',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: RootScreen(label: 'schedule'),
              ),
              routes: const [
                // GoRoute(
                //   path: 'details',
                //   builder: (context, state) => const DetailsScreen(label: 'B'),
                // ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorProfileKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: '/profile',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: RootScreen(label: 'profile'),
              ),
              routes: const [
                // GoRoute(
                //   path: 'details',
                //   builder: (context, state) => const DetailsScreen(label: 'B'),
                // ),
              ],
            ),
          ],
        ),
      ],
    ),

  ],
);
