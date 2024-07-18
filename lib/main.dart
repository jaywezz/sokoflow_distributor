import 'package:camera/camera.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/lang/locale_keys.g.dart';
import 'package:nested_navigation_gorouter_example/services/go_router_config_service.dart';
import 'package:nested_navigation_gorouter_example/services/notification_service.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

import 'firebase_options.dart';
import 'lang/codegen_loader.g.dart';
import 'services/isar_service.dart';

// private navigators
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final isRefreshProvider = StateProvider<bool>((ref) => false);
final isOfflineProvider = StateProvider<bool>((ref) => false);

Future<void> checkUserCheckin()async{
  Isar isar = await IsarService().db;
}

void main() async{
  // turn off the # in the URLs on the web
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // await TokenStorage().removeAccessToken();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  try {
    WidgetsFlutterBinding.ensureInitialized();
  } on CameraException catch (e) {
    print("error:$e");
  }
  await checkUserCheckin();
  await NotificationController.initializeLocalNotifications();
  usePathUrlStrategy();
  runApp(EasyLocalization(
      path: 'assets/lang',
      supportedLocales: const [
        Locale('en'),
        Locale('sw'),
      ],
      fallbackLocale: Locale('en'),
      startLocale: Locale('sw'),
      assetLoader: CodegenLoader(),
      child: ProviderScope(observers: [Logging()], child: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("supported locales: ${context.supportedLocales}");
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        supportedLocales: const [
          Locale('en'),
          Locale('sw'),
        ],
        localizationsDelegates: context.localizationDelegates,
        locale: context.locale,
        routerConfig: goRouter,
        key: navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: false,
            primarySwatch:Colors.blue,
            textTheme: GoogleFonts.poppinsTextTheme()
        ),
      ),
    );
  }
}

// Stateful navigation based on:
// https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
class ScaffoldWithNestedNavigation extends StatefulWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(
            key: key ?? const ValueKey<String>('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  @override
  State<ScaffoldWithNestedNavigation> createState() => _ScaffoldWithNestedNavigationState();
}

class _ScaffoldWithNestedNavigationState extends State<ScaffoldWithNestedNavigation> {
  void _goBranch(int index) {
    print("the selected index: ${widget.navigationShell.currentIndex}");
    widget.navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == widget.navigationShell.currentIndex,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print("size: ${constraints.maxWidth}");
      if (constraints.maxWidth < 500) {
        return Builder(builder:(context){
          return ScaffoldWithNavigationBar(
            body: widget.navigationShell,
            selectedIndex: widget.navigationShell.currentIndex,
            onDestinationSelected: _goBranch,
          );
        });
      }
      else {
        return ScaffoldWithNavigationRail(
          body: widget.navigationShell,
          selectedIndex: widget.navigationShell.currentIndex,
          onDestinationSelected: _goBranch,
        );
      }
    });
  }
}

class ScaffoldWithNavigationBar extends StatefulWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  State<ScaffoldWithNavigationBar> createState() => _ScaffoldWithNavigationBarState();
}

class _ScaffoldWithNavigationBarState extends State<ScaffoldWithNavigationBar> {
  User? user;
  getUser()async{
    Isar isar = await IsarService().db;
    user = await isar.users.where().findFirst();
    setState(() {});
  }
  @override
  void initState() {
    // TODO: implement initState
    getUser();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) {
          return Scaffold(
            body: widget.body,
            bottomNavigationBar: NavigationBar(
              backgroundColor: Colors.transparent,
              indicatorColor: Styles.appPrimaryLightColor,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              height: 60,
              selectedIndex: widget.selectedIndex,
              destinations: [
                const NavigationDestination(
                    icon: Icon(CupertinoIcons.home, color: Colors.black54,),
                    selectedIcon: Icon(Icons.home, color: Colors.white,),
                    label: "Home"
                ),
                user==null?const NavigationDestination(
                    icon: Icon(CupertinoIcons.group,  color: Colors.black54),
                    selectedIcon: Icon(CupertinoIcons.group_solid,  color: Colors.white),
                    label: "Leads"
                ):user!.accountType == AppConstants.salesType
                    ?const NavigationDestination(
                    icon: Icon(CupertinoIcons.group,  color: Colors.black54),
                    selectedIcon: Icon(CupertinoIcons.group_solid,  color: Colors.white),
                    label: "Leads"
                ):const NavigationDestination(
                    icon: Icon(CupertinoIcons.car,  color: Colors.black54),
                    selectedIcon: Icon(CupertinoIcons.group_solid,  color: Colors.white),
                    label: "Deliveries"
                ),
                NavigationDestination(
                    icon: Icon(CupertinoIcons.calendar,  color: Colors.black54),
                    selectedIcon: Icon(Icons.calendar_today,  color: Colors.white),
                    label: "Schedule"
                ),
                NavigationDestination(
                    icon: Icon(CupertinoIcons.person,  color: Colors.black54),
                    selectedIcon: Icon(CupertinoIcons.person_alt,  color: Colors.white),
                    label: "Profile"
                )
              ],
              onDestinationSelected: widget.onDestinationSelected,
            ),
          );
        }
    );
  }
}

class ScaffoldWithNavigationRail extends StatelessWidget {
  const ScaffoldWithNavigationRail({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: Container(
      //     color: Colors.black54,
      //   ),
      // ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            labelType: NavigationRailLabelType.all,
            destinations: <NavigationRailDestination>[
              NavigationRailDestination(
                label: Text(LocaleKeys.home.tr()),
                icon: Icon(Icons.home),
              ),
              const NavigationRailDestination(
                label: Text('Sales'),
                icon: Icon(CupertinoIcons.group,  color: Colors.black54),
                selectedIcon: Icon(CupertinoIcons.group_solid,  color: Colors.white),
              ),
              const NavigationRailDestination(
                label: Text('Schedules'),
                icon: Icon(CupertinoIcons.calendar,  color: Colors.black54),
                selectedIcon: Icon(Icons.calendar_today,  color: Colors.white),
              ),
              const NavigationRailDestination(
                label: Text('Profile'),
                icon: Icon(CupertinoIcons.person,  color: Colors.black54),
                selectedIcon: Icon(CupertinoIcons.person_alt,  color: Colors.white),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }
}




Logger _log = Logger(printer: PrettyPrinter());

class Logging extends ProviderObserver {
  @override
  void didUpdateProvider(
      ProviderBase provider,
      Object? previousValue,
      Object? newValue,
      ProviderContainer container,
      ) {
    // _log.i('[${provider.name ?? provider.runtimeType}] value: $newValue');
  }
}
