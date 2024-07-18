import 'package:flutter/material.dart';
import 'package:nested_navigation_gorouter_example/utils/responsive.dart';

defaultPadding(BuildContext context) {
  return MediaQuery.of(context).size.width /
      100 *
      (Responsive.isTablet(context) ? 3 : (Responsive.isTall(context) ? 4 : 3));
}
double defaultRadius1 = 11;
const defaultDuration = Duration(seconds: 1);


class AppConstants{

  static const String CHECKIN = "check-in";
  //Delivery statuses
  static const String accepted = "Accepted";
  static const String pendingAcceptance = "Pending Acceptance";
  static const String completed = "DELIVERED";

  // Account Type
  static const String salesType = "Sales Rep";
  static const String deliveryType = "Deliveries";

}

