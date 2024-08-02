import 'package:flutter/material.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';

class AppThemes {
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.background,
      brightness: Brightness.light,
      fontFamily: 'LeagueSpartan',
      primaryColor: AppColors.red);
}
