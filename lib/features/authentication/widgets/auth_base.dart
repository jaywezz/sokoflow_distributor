import 'package:flutter/material.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/responsive.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class AuthBase extends StatelessWidget {
  final List<Widget> children;
  const AuthBase({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding(context)),
            child: Column(
              children: [
                SizedBox(
                    height: defaultPadding(context) *
                        (Responsive.isMobile(context) &&
                            Responsive.isMobileLarge(context)
                            ? 3
                            : 2.5)),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding(context) * 2),
                  child: Image.asset("assets/logos/play_store_512.png",height: MediaQuery.of(context).size.width * .4, width: MediaQuery.of(context).size.width * .4,),
                ),
                // Text("Alpine", style: Styles.heading1(context),),
                SizedBox(
                  height: 17),
                ...(children[0] as Column).children,
                const SizedBox(
                  height:  0.5
                ),
              ],
            ),
          ),
          //SizedBox(height: defaultPadding(context)),
          //children[1]
        ],
      ),
    );
  }
}
