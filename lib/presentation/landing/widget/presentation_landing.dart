import 'package:flutter/material.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';

class PresentationArticle extends StatelessWidget {
  const PresentationArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
            top: AppLayer.marginVertical - 10,
            left: AppLayer.marginHorizontal,
            right: AppLayer.marginHorizontal,
            bottom: AppLayer.marginVertical + 10),
        child: Container(
          width: double.infinity,
          height: double.maxFinite,
          decoration: BoxDecoration(
            color: AppColors.red,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: AppLayer.marginVertical,
                right: AppLayer.marginHorizontal - 10,
                bottom: AppLayer.marginVertical),
            child: LayoutBuilder(
              builder: (context, constraints) {
                double topPokeball = constraints.maxHeight * 0.05;
                double endPokeball = constraints.maxWidth * 0.6;
                double topCharizard = constraints.maxHeight * -0.05;
                double leftCharizard = constraints.maxWidth * 0.02;

                double pokeballSize = constraints.maxWidth * 0.8;
                double charizardSize = constraints.maxWidth * 1.02;
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Pokémon',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(50, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Se cuenta con 151 pokemones de la \n'
                              'primera generación',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 3.0,
                                    color: Color.fromARGB(50, 0, 0, 0),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    PositionedDirectional(
                      top: topPokeball,
                      end: endPokeball,
                      child: SizedBox(
                        width: pokeballSize,
                        height: pokeballSize,
                        child: Opacity(
                          opacity: 0.2,
                          child: Image.asset(
                            'assets/icon/pokeball.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      width: charizardSize,
                      height: charizardSize,
                      top: topCharizard,
                      left: leftCharizard,
                      child: Image.asset('assets/icon/charizard.png'),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
