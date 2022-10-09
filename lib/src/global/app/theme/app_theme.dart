import 'package:e_learning_dashboard/src/global/app/colors/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get light => _lightTheme;
}

final ThemeData _lightTheme = ThemeData.light().copyWith(
  primaryColor: AppColors.purple,
  backgroundColor: AppColors.white300,
  colorScheme: _lightColorScheme,
);

final ColorScheme _lightColorScheme = const ColorScheme.light().copyWith(
  primary: AppColors.purple,
  onPrimary: AppColors.white,
  secondary: AppColors.white200,
  onSecondary: AppColors.black,
  background: AppColors.white300,
  onBackground: AppColors.darkPurple,
  surface: AppColors.white,
  onSurface: AppColors.black,
  onSurfaceVariant: AppColors.black40,
  tertiary: AppColors.grey,
  onTertiary: AppColors.white,
);
