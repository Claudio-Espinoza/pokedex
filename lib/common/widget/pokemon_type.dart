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
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: 80,
      decoration: BoxDecoration(
        color: TypeColor.pokemonTypeColors[tipo],
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text(tipo,textAlign: TextAlign.center  ,style: const TextStyle(
        color: Colors.white
        
      )),
    );
  }
}