import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokedex_demo/common/helper/util.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';
import 'package:pokedex_demo/presentation/team/page/team.dart';
import 'package:pokedex_demo/presentation/team/widget/input_team.dart';

class TeamForm extends HookWidget {
  const TeamForm({super.key});

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
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppLayer.marginHorizontal,
                    vertical: AppLayer.marginVertical),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () =>
                          Util.redirectToPage(context, const TeamPage()),
                      icon: const Icon(Icons.arrow_back),
                    ),
                    const Spacer(flex: 2),
                    Title(
                      color: AppColors.font,
                      child: const Text(
                        "Formación",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(flex: 3),
                  ],
                ),
              ),
            ),
            const Flexible(flex: 8, child: InputTeam()),
          ],
        ),
      ),
    );
  }
}
