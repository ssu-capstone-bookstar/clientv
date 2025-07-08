import 'package:book/common/theme/app_colors.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
    primaryColor: AppColors.primaryPurple,
    scaffoldBackgroundColor: AppColors.backgroundBlack,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundBlack,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTexts.b5.copyWith(color: ColorName.w1),
      iconTheme: IconThemeData(
        color: AppColors.appbarGray,
      ),
      actionsIconTheme: IconThemeData(
        color: AppColors.appbarGray,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.widgetBlack,
      selectedItemColor: AppColors.primaryPurple,
      unselectedItemColor: AppColors.textGrey,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.widgetBlack,
      hintStyle: const TextStyle(color: AppColors.textGrey),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide.none,
      ),
      prefixIconColor: AppColors.textGrey,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.white),
      bodyMedium: TextStyle(color: AppColors.white),
      titleLarge:
          TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
    ),
  );
}
