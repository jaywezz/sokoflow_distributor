import 'package:flutter/material.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';

import '../../utils/responsive.dart';
import '../../utils/styles.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: Styles.appPrimaryLightColor,
      // value: 0.3,
      //valueColor: Color(0x00ffffff),
      strokeWidth: 2,
      //color: primaryColor,
      backgroundColor: Colors.grey.withOpacity(.3),
    );
  }
}