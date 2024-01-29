import 'package:flutter/material.dart';

class MyTheme {
  static const Color ocreOscuro = Color(0xFF3C3B21);
  static const Color ocreBase = Color(0xFF625C41);
  static const Color ocreBajo = Color(0xFF8D8668);
  static const Color verdeMenta = Color(0xFF27D1A8);
  static const Color fucsia = Color(0xFFF90095);
  static const Color purpura = Color(0xFF6500E8);
  static const Color dividerpink = Color(0xFFCAC4D0);
  static const Color cremaback = Color(0xFFFEFBED);

  static TextStyle basicTextStyle(
      {double? size, Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? Colors.white,
      fontSize: size ?? 20,
      fontFamily: 'Jost',
      fontWeight: fontWeight ?? FontWeight.w600,
      letterSpacing: 0.10,
    );
  }

  static TextStyle moonTextStyle(
      {double? size, Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? Colors.white,
      fontSize: size ?? 20,
      fontFamily: 'MoonDream',
      fontWeight: fontWeight ?? FontWeight.w600,
      letterSpacing: 0.10,
    );
  }
}
