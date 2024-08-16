import 'package:flutter/material.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';

class TypeColor {
  static final Map<String, Color> pokemonTypeColors = {
    'Normal': AppColors.normal, // Normal
    'Fire': AppColors.fire, // Fuego
    'Water': AppColors.water, // Agua
    'Grass': AppColors.plant, // Planta
    'Electric': AppColors.thunderbolt, // Rayo
    'Ice': AppColors.ice, // Hielo
    'Fighting': AppColors.struggle, // Lucha
    'Poison': AppColors.poison, // Veneno
    'Ground': AppColors.earth, // Tierra
    'Flying': AppColors.flying, // Volador
    'Psychic': AppColors.psychic, // Psiquico
    'Bug': AppColors.incest, // Incecto
    'Rock': AppColors.rock, // Roca
    'Ghost': AppColors.ghost, // Fantasma
    'Dragon': AppColors.dragon, // Dragon
  };
}
