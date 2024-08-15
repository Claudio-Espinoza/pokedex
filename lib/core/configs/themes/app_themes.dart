import 'package:flutter/material.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';

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
      borderRadius: BorderRadius.circular(AppLayer.borderRadius),
      borderSide: const BorderSide(color: AppColors.border),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppLayer.borderRadius),
      borderSide: const BorderSide(color: AppColors.iconGray),
    ),
  );

  static final buttonThemePrimary = ElevatedButton.styleFrom(
      backgroundColor: AppColors.green,
      elevation: 0,
      textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontFamily: 'LeagueSpartan'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)));

  static final buttonThemeSecundary = ElevatedButton.styleFrom(
      backgroundColor: AppColors.blue,
      elevation: 0,
      textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.fontContrast,
          fontFamily: 'LeagueSpartan'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)));

  static InputDecoration inputGenericTheme({
    String hintText = 'Ingrese parametro',
  }) {
    return InputDecoration(
      hintText: hintText,
      filled: true,
      fillColor: AppColors.input,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppLayer.borderRadius),
        borderSide: const BorderSide(color: AppColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppLayer.borderRadius),
        borderSide: const BorderSide(color: AppColors.iconGray),
      ),
    );
  }

  static ButtonStyle customButtonStyle({
    Color backgroundColor = AppColors.alerRed,
    double borderRadius = 10.0,
    double elevation = 5.0,
    double size = 150,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(
        horizontal: AppLayer.marginHorizontal,
        vertical: AppLayer.marginVertical),
  }) {
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      elevation: elevation,
      fixedSize: Size(size, 50),
    );
  }
}
