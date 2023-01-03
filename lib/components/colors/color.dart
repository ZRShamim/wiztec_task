import 'package:flutter/material.dart';

class CustomColor {
  static const int mainColorCode = 0xff10ab83;
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff000000);
  static const Color orange48 = Color(0xffF37048);
  static const Color colorMain = Color(mainColorCode);
  static const Color colorSecondary = Color(0xffC9ECE3);
  static Color colorPrimary = const Color(0xffC9ECE3).withOpacity(0.3);
  static Color colorMainwithOp50 = colorMain.withOpacity(0.5);
  static Color blackWithOp60 = black.withOpacity(0.6);

  static const MaterialColor primary =
      MaterialColor(CustomColor.mainColorCode, {
    50: colorMain,
    100: colorMain,
    200: colorMain,
    300: colorMain,
    400: colorMain,
    500: colorMain,
    600: colorMain,
    700: colorMain,
    800: colorMain,
    900: colorMain,
  });
}
