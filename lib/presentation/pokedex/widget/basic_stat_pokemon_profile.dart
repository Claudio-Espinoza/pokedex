import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex_demo/domain/model/pokemon.dart';

class BasicStatPokemonProfile extends StatelessWidget{
  

  const BasicStatPokemonProfile({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;
  
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(
        children: [
            Row(
              children: [
                Row(
                  children: [
                    const Text("HP   "),
                    Text(pokemon.stats.attack.toString())
                  ],
                )
              ],
            )
          ],
      )
      );
  }


  

}