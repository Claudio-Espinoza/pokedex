import 'package:flutter/material.dart';
import 'package:pokedex_demo/common/widget/custom_buton.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';
import 'package:pokedex_demo/presentation/team/page/team.dart';

class OptionLanding extends StatefulWidget {
  const OptionLanding({super.key});

  @override
  State<OptionLanding> createState() => _OptionLandingState();
}

class _OptionLandingState extends State<OptionLanding> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
            bottom: AppLayer.marginVertical + 30,
            left: AppLayer.marginHorizontal,
            right: AppLayer.marginHorizontal),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              text: 'Pokédex',
              onPressed: () => redirectToPage(const Team()),
              backgroundColor: AppColors.green,
            ),
            CustomButton(
              text: 'Equipos',
              onPressed: () => redirectToPage(const Team()),
              backgroundColor: AppColors.blue,
            )
          ],
        ),
      ),
    );
  }

  Future<void> redirectToPage(Widget page) async {
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }
}
