import 'package:flutter/material.dart';
import 'package:pokedex_demo/common/enum/type_colors.dart';

class PokemonType extends StatelessWidget{

  final String tipo;


  const PokemonType({
    super.key,
    required this.tipo
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: TypeColor.pokemonTypeColors[tipo],
      child: Text(tipo)
    );
  }
}