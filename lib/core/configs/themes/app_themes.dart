import 'package:flutter/material.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';

class AppThemes {
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.background,
      brightness: Brightness.light,
      fontFamily: 'LeagueSpartan',
      primaryColor: AppColors.red);

  static final inputTheme = InputDecoration(
    hintText: 'Buscar Pokémon',
    suffixIcon: const Icon(Icons.search),
    filled: true,
    fillColor: AppColors.input,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: AppColors.border),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: AppColors.iconGray),
    ),
  );
}
