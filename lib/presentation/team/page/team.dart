import 'package:flutter/material.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
// import 'package:pokedex_demo/domain/service/pokemon_service.dart';

class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Container(
                color: AppColors.alerRed,
              ),
            ),
            Flexible(
              flex: 8,
              child: Container(
                color: AppColors.alertGreen,
              ),
            )
          ],
        ),
      ),
    );
  }
}
