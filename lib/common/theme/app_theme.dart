import 'package:bookstar/gen/colors.gen.dart';
import 'package:flutter/material.dart';

import 'style/app_texts.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
    primaryColor: ColorName.p1,
    scaffoldBackgroundColor: ColorName.b1,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorName.b1,
      surfaceTintColor: ColorName.b1,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTexts.b5.copyWith(color: ColorName.w1),
      iconTheme: IconThemeData(color: ColorName.g7),
      actionsIconTheme: IconThemeData(color: ColorName.g7),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorName.g7,
      selectedItemColor: ColorName.p1,
      unselectedItemColor: ColorName.g3,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorName.g7,
      hintStyle: const TextStyle(color: ColorName.g3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide.none,
      ),
      prefixIconColor: ColorName.g3,
    ),
  );
}
