import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {Key? key,
        required this.mobile,
        this.mobileLarge,
        this.tablet,
        this.desktop,
        this.tallmobile})
      : super(key: key);
  final Widget? mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget? desktop;
  final Widget? tallmobile;

  static bool isTall(BuildContext context) =>
      MediaQuery.of(context).size.height > 740;
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 600;
  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 600;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    print(_size);

    if (_size.width >= 1024) {
      return desktop!;
    } else if (_size.height >= 740) {
      return tallmobile!;
    } else if (_size.width >= 600 && tablet != null) {
      return tablet!;
    } else if (_size.width >= 600 && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile!;
    }
  }
}
