

import 'package:intl/intl.dart';

final formatCurrency = NumberFormat.currency(locale: "en_US",
    symbol: "", decimalDigits: 0);

int roundUpAbsolute(double number) {
  return number.isNegative ? number.floor() : number.ceil();
}

