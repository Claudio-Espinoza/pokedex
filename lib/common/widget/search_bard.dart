import 'package:flutter/material.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_themes.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const SearchInput({
    super.key,
    required this.controller,
    this.labelText = 'Buscar Pokémon',
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(color: AppColors.font),
      decoration: AppThemes.inputTheme,
      onSubmitted: (text) {
        print('Input: $text'); // Aqui tendriamos agregarle la logica de buscar
      },
    );
  }
}
