import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';

class PresentationArticle extends StatelessWidget {
  const PresentationArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
            top: AppLayer.marginVertical,
            left: AppLayer.marginHorizontal,
            right: AppLayer.marginHorizontal,
            bottom: AppLayer.marginVertical),
        child: Container(
          width: double.infinity,
          height: double.maxFinite,
          decoration: BoxDecoration(
            color: AppColors.red,
            borderRadius: BorderRadius.circular(AppLayer.borderRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: AppLayer.marginVertical,
                right: AppLayer.marginHorizontal - 10,
                bottom: AppLayer.marginVertical),
            child: Stack(
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
                    SizedBox(height: 5),
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
                  top: 45,
                  end: 190,
                  child: SizedBox(
                    width: 220,
                    height: 220,
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
                  width: 320,
                  height: 320,
                  top: -20,
                  left: 0,
                  child: Image.asset('assets/icon/charizard.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
