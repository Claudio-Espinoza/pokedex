


import 'package:flutter/material.dart';
import 'package:pokedex_demo/common/widget/pokemon_type.dart';
import 'package:pokedex_demo/core/configs/themes/app_themes.dart';
import 'package:pokedex_demo/domain/model/pokemon.dart';

class InformationPokemonProfile extends StatelessWidget {
  const InformationPokemonProfile({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Wrap(

        runSpacing: 25,
        children: [
          Wrap(
            spacing: 80,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Categoria",textAlign: TextAlign.left, style: AppThemes.profileLabelTextStyle),
                  Text("Altura",textAlign: TextAlign.left, style: AppThemes.profileLabelTextStyle),
                  Text("Peso",textAlign: TextAlign.left, style: AppThemes.profileLabelTextStyle)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(pokemon.type[0], style: AppThemes.profileFliedTextStyle,),
                  Text(pokemon.about.height, style: AppThemes.profileFliedTextStyle),
                  Text(pokemon.about.weight, style: AppThemes.profileFliedTextStyle)
                  ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Tipo",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                )),
                Wrap(
                  spacing: 15,
                  children: pokemon.type.map((String type){
                    return PokemonType(tipo: type);
                  }).toList()
                ),
                const SizedBox(height: 20, width: 20),
                const Text("Debilidad",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                )),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 15,
                    runSpacing: 10,
                    children: pokemon.about.weaknesses.map((String weaknesses){
                      return PokemonType(tipo: weaknesses);
                    }).toList()
                  ),
                ),
              ],
              ),
            ],
          
          )
          ],
      );
    
  }
}
