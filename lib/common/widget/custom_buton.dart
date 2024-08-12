import 'package:flutter/material.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double height;

  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.backgroundColor = AppColors.blue,
      this.textColor = AppColors.fontContrast,
      this.borderRadius = AppLayer.borderRadius + 10,
      this.height = 70});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(borderRadius),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double pokeballSize = constraints.maxWidth * 0.30;
          double topPokeball = -pokeballSize * 0.15;
          double endPokeball = -pokeballSize * 0.23;

          return Container(
            width: double.infinity,
            height: height,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppLayer.marginHorizontal - 10),
                        child: Text(
                          text,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'LeagueSpartan',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: topPokeball,
                  right: endPokeball,
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
              ],
            ),
          );
        },
      ),
    );
  }
}
