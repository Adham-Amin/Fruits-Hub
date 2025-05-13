import 'package:flutter/widgets.dart';

abstract class AppStyles {
  static TextStyle textSemiBold13(context) {
    return TextStyle(fontSize: 13, fontWeight: FontWeight.w600);
  }

  static TextStyle textBold23(context) {
    return TextStyle(fontSize: 23, fontWeight: FontWeight.w700);
  }

  static TextStyle textRegular11(context) {
    return TextStyle(fontSize: 11, fontWeight: FontWeight.w400);
  }

  static TextStyle textBold16(context) {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.w700);
  }
}
