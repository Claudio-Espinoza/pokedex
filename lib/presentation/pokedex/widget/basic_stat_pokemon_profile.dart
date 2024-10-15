import 'package:flutter/material.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_themes.dart';
import 'package:pokedex_demo/domain/model/pokemon.dart';

class BasicStatPokemonProfile extends StatelessWidget {
  const BasicStatPokemonProfile({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  final int maxStatValue = 150;
  final double maxWidth = 140;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        statRow("HP", pokemon.stats.hp, maxStatValue, maxWidth),
        statRow("Ataque", pokemon.stats.attack, maxStatValue, maxWidth),
        statRow("Defensa", pokemon.stats.defense, maxStatValue, maxWidth),
        statRow("Ataque especial", pokemon.stats.spAttack, maxStatValue, maxWidth),
        statRow("Defensa especial", pokemon.stats.spDefense, maxStatValue, maxWidth),
        statRow("Velocidad", pokemon.stats.speed, maxStatValue, maxWidth),
      ],
    );
  }

  Widget statRow(String statName, int statValue, int maxStatValue, double maxWidth) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0), // Espaciado entre filas
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 130, child: Text(statName, style: AppThemes.profileLabelTextStyle)),  // Ajusta el ancho del texto
          SizedBox(width: 40, child: Text(statValue.toString(), style: AppThemes.profileFliedTextStyle,)), // Espacio fijo para el valor del stat
          statBar(statValue, maxStatValue, maxWidth),
        ],
      ),
    );
  }
}

Widget statBar(int statValue, int maxStatValue, double maxWidth) {
  double barWidth = (statValue / maxStatValue) * maxWidth;

  return Stack(
    alignment: Alignment.centerLeft,
    children: [
      Container(
        height: 10,
        width: maxWidth,
        decoration: BoxDecoration(
          color: AppColors.disableFont,
          borderRadius: BorderRadius.circular(10)
        )),
      Container(
        color: (statValue > 0.5 * maxStatValue) ? AppColors.alertGreen : AppColors.alerRed, // Color de la barra que representa el stat
        height: 10,
        width: barWidth,
      ),
    ],
  );
}
