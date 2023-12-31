import 'package:flutter/material.dart';

class ColorConstants {
  static Color lightScaffoldBackgroundColor = hexToColor('#F9F9F9');
  static Color darkScaffoldBackgroundColor = hexToColor('#2F2E2E');
  static Color secondaryAppColor = hexToColor('#22DDA6');
  static Color secondaryDarkAppColor = Colors.white;
  static Color tipColor = hexToColor('#B6B6B6');
  static Color lightGray = Color(0xFFF6F6F6);
  static Color darkGray = Color(0xFF9F9F9F);
  static Color black = Color(0xFF000000);
  static Color white = Color(0xFFFFFFFF);

  static Color foodPrimaryColor = const Color(0xFFFEAF18);
  static Color foodPrimaryLightColor = const Color(0xFFFFF9EC);
  static Color foodShadowColor = const Color(0xFFd5d5d5).withOpacity(.3);
  static Color foodContentColor = const Color(0xFFBCBCBC);
  static Color foodContentColor1 = const Color(0xFFBCBCBC);
  static Color foodTitleColor = const Color(0xFF433417);
  static Color foodTitleColor1 = const Color(0xFF433417);
  static Color foodUnselectTabColor = const Color(0xFFA4A4A4);
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
