import 'dart:async';
import 'dart:math';

import 'package:url_launcher/url_launcher.dart';

openDialPad(String phoneNumber) async {
  Uri url = Uri(scheme: "tel", path: phoneNumber);
  await launchUrl(url);
}

double calculateDistance(lat1, lon1, lat2, lon2) {
  // print("calculating distance: ${lat1} $lat2, $lon1, $lon2 }");
  var p = 0.017453292519943295;
  var c = cos;
  var a = 0.5 -
      c((lat2 - lat1) * p) / 2 +
      c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
  return 12742 * asin(sqrt(a));
}

String constructTime(int seconds) {
  int hour = seconds ~/ 3600;
  int minute = seconds % 3600 ~/ 60;
  int second = seconds % 60;
  return "${formatTime(hour)}:${formatTime(minute)}:${formatTime(second)}";
}

String formatTime(int timeNum) {
  return timeNum < 10 ? "0" + timeNum.toString() : timeNum.toString();
}
