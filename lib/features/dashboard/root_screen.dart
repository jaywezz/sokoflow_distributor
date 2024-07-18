import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/provider/auth_provider.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/home_screen.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/widgets/drawer.dart';
import 'package:nested_navigation_gorouter_example/features/profile/profile_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/orders_base_screen.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/form_drop_down.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/pill_button.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/formatters/string_formatter.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

/// Widget for the root/initial pages in the bottom navigation bar.
class RootScreen extends ConsumerStatefulWidget {
  static const routeName = "sales";
  /// Creates a RootScreen
  const RootScreen({required this.label, Key? key})
      : super(key: key);

  /// The label
  final String label;

  /// The path to the detail page

  @override
  ConsumerState<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends ConsumerState<RootScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.transparent,
      floatingActionButton: ref.watch(userDataProvider(context)).when(
          data: (data){
            return widget.label != "schedule"? FloatingActionButton(
              backgroundColor: Styles.appPrimaryColor,
              foregroundColor: Colors.black,
              onPressed: () {
                if(data.accountType == AppConstants.salesType){
                  context.go('/sales/add-lead');
                }else{
                  context.go('/dashBoard/inventory');
                }
              },
              child:data!.accountType == AppConstants.salesType? const Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ):const Icon(
                Icons.book_outlined,
                size: 30,
                color: Colors.white,
              )
            ):null;
          },
          error: (e,s){
           return Text("");
          },
          loading: (){
            return AnimatedCircularProgressIndicator();
          }),
      drawer: MainDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                AppBar(
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  title: Text(widget.label.toTitleCase(), style: Styles.heading2(context),),
                  centerTitle: true,
                  leading: GestureDetector(
                    onTap: () {
                      print("opening drawer");
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    child: SvgPicture.asset(

                      "assets/icons/a – 24.svg",
                      color: Colors.black87,
                      matchTextDirection: true,
                    ),
                  ),
                  actions: [
                    PopupMenuButton<String>(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * .15,
                          decoration: const BoxDecoration(
                            // color: Colors.amber,
                              borderRadius: BorderRadius.all(Radius.circular(12))
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Icon(Icons.language, color: Colors.black54,),
                                SizedBox(width: 4,),
                                Text(context.locale.languageCode.toUpperCase(), style: Styles.heading3(context).copyWith(color: Colors.black54),),
                                SizedBox(width: 4,),

                              ],
                            )
                          ),
                        ),
                      ),
                      onSelected: (String value) async{
                        if(value == "English"){
                          await context.setLocale(Locale('en'));
                          setState(() {});
                        }else{
                          await context.setLocale(Locale('sw'));
                          setState(() {});
                        }

                      },
                      itemBuilder: (BuildContext context) {
                        return {'English', 'Kiswahili'}.map((String choice) {
                          return PopupMenuItem<String>(
                            value: choice,
                            child: Text(choice),
                          );
                        }).toList();
                      },
                    ),

                  ],
                ),

                ref.watch(userDataProvider(context)).when(data: (data){
                  return widget.label == "DashBoard"?HomeScreen()
                      :widget.label == "sales"?OrdersBaseScreen()
                      :const ProfileScreen();
                }, error: (e,s){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("An error occurred getting user data", style: Styles.heading3(context),),
                      const SizedBox(height: 20,),
                      FullWidthButton(
                          action: (){
                           context.pushReplacement("/login");
                          },
                        text: "Login",
                      )
                    ],
                  );
                }, loading: (){
                  return const Center(child: AnimatedCircularProgressIndicator(),);
                })


              ],
            ),
          ),
        ),
      ),
    );
  }
}