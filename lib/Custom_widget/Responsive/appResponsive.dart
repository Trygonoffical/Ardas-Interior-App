import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  const Responsive({Key? key, required this.mobile, required this.tablet})
      : super(key: key);
  static bool isMobile(BuildContext, context) =>
      MediaQuery.of(context).size.width < 400;

  static bool isTablet(BuildContext, context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 400;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth >= 400) {
          return tablet;
        } else {
          return mobile;
        }
      }),
    );
  }
}
