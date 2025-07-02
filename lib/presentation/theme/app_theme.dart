// presentation/theme/app_theme.dart
import 'package:flutter/material.dart';
import 'package:senegal_weather_app/core/constants/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.senegalGreen,
    colorScheme: ColorScheme.light(
      primary: AppColors.senegalGreen,
      secondary: AppColors.senegalYellow,
      surface: AppColors.backgroundLight,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.senegalGreen,
      foregroundColor: Colors.white,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.senegalYellow,
      foregroundColor: Colors.black,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primaryDark,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryDark,
      secondary: AppColors.accentDark,
      surface: AppColors.backgroundDark,
    ),
    appBarTheme: AppBarTheme(backgroundColor: AppColors.primaryDark),
  );
}
