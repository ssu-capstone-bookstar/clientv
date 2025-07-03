import 'package:book/common/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
    primaryColor: AppColors.primaryPurple,
    scaffoldBackgroundColor: AppColors.backgroundBlack,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundBlack,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: AppColors.white,
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
      titleLarge: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
    ),
  );
} 