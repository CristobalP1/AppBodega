import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromRGBO(3, 4, 94, 1);
  static const Color secondary = Color.fromRGBO(0, 180, 216, 1);
  static const Color tertiary = Color.fromRGBO(144, 244, 239, 1);
  static const Color quaternary = Color.fromRGBO(202, 240, 248, 1);

  static final themeData = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
  );
}
