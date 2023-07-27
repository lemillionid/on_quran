import 'package:flutter/material.dart';
import 'package:on_quran_uiux/src/core/util/constants.dart';

class MyTheme {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: scaffoldBGC,
      colorScheme: const ColorScheme.dark());

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light());
}
