import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';
import 'package:pokedex_demo/core/configs/themes/app_themes.dart';
import 'package:pokedex_demo/domain/model/team.dart';

class PokemonDetail extends HookWidget {
  final PokemonTeam pokemon;
  const PokemonDetail({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    print("Indice: $pokemon");
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: AppColors.alerRed,
              child: Image.network(pokemon.imgTeam, scale: 0.4),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              padding: const EdgeInsets.only(left: AppLayer.marginHorizontal),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Expanded(child: Text("HP")),
                      Expanded(
                        flex: 1,
                        child: Text(pokemon.hpTeam),
                      ),
                      Expanded(
                        flex: 3,
                        child: AppThemes.progressBar(
                            valueOrigin: double.parse(pokemon.hpTeam)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(child: Text("Atk")),
                      Expanded(
                        flex: 1,
                        child: Text(pokemon.attackTeam),
                      ),
                      Expanded(
                        flex: 3,
                        child: AppThemes.progressBar(
                            valueOrigin: double.parse(pokemon.attackTeam)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(child: Text("Def")),
                      Expanded(
                        flex: 1,
                        child: Text(pokemon.defenseTeam),
                      ),
                      Expanded(
                        flex: 3,
                        child: AppThemes.progressBar(
                            valueOrigin: double.parse(pokemon.defenseTeam)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
