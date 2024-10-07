import 'package:flutter/material.dart';
import 'package:pokedex_demo/common/helper/util.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';
import 'package:pokedex_demo/presentation/landing/page/landing.dart';
import 'package:pokedex_demo/presentation/team/page/team_form.dart';
import 'package:pokedex_demo/presentation/team/widget/list_team.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

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
                  children: [
                    IconButton(
                      onPressed: () =>
                          Util.redirectToPage(context, const LandingPage()),
                      icon: const Icon(Icons.arrow_back),
                    ),
                    Title(
                      color: AppColors.font,
                      child: const Text(
                        "Team",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () =>
                          Util.redirectToPage(context, const TeamForm()),
                      icon: const Icon(Icons.add_circle_outline),
                    ),
                  ],
                ),
              ),
            ),
            const Flexible(
              flex: 8,
              child: Padding(
                  padding: EdgeInsets.only(top: AppLayer.paddingTop - 10),
                  child: ListTeam()),
            )
          ],
        ),
      ),
    );
  }
}
