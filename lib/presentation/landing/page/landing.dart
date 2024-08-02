import 'package:flutter/material.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        color: AppColors.alerRed,
        width: double.infinity,
        height: 200,
        child: const Column(
          children: [
            Text('Pokedex',
                style: TextStyle(fontSize: 32, color: AppColors.font))
          ],
        ),
      ),
    );
  }
}
