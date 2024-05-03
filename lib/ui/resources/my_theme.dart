import 'package:flutter/material.dart';

class MyTheme {
  static const Color ocreOscuro = Color(0xFF3C3B21);
  static const Color ocreBase = Color(0xFF625C41);
  static const Color ocreBajo = Color(0xFF8D8668);
  static const Color ocreParrafo = Color(0xFF5F5F5F);
  static const Color verdeMenta = Color(0xFF27D1A8);
  static const Color fucsia = Color(0xFFF90095);
  static const Color purpura = Color(0xFF6500E8);
  static const Color dividerpink = Color(0xFFCAC4D0);
  static const Color cremaback = Color(0xFFFEFBED);
  static const Color cremabacWeb = Color(0xFFebe8da);
  static const Color verderegister = Color(0xFF00CC5E);

  static TextStyle basicTextStyle(
      {double? size,
      Color? color,
      FontWeight? fontWeight,
      TextDecoration? decoration}) {
    return TextStyle(
        color: color ?? Colors.white,
        fontSize: size ?? 20,
        fontFamily: 'Jost',
        fontWeight: fontWeight ?? FontWeight.w600,
        letterSpacing: 0.10,
        decorationColor: color ?? Colors.white,
        decoration: decoration);
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
