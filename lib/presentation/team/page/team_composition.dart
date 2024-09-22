import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokedex_demo/common/helper/util.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';
import 'package:pokedex_demo/domain/service/team_service.dart';
import 'package:pokedex_demo/presentation/landing/page/landing.dart';
import 'package:pokedex_demo/presentation/team/widget/list_pokemon.dart';

class CompositionTeam extends HookWidget {
  final String teamName;
  const CompositionTeam({super.key, required this.teamName});

  @override
  Widget build(BuildContext context) {
    Future<String?> description = TeamService().getDescriptionByName(teamName);

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
                    const Spacer(flex: 2),
                    Title(
                      color: AppColors.font,
                      child: Text(
                        teamName,
                        style: const TextStyle(
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
            Flexible(
              flex: 8,
              child: FutureBuilder<String?>(
                future: description,
                builder: (BuildContext context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppLayer.marginHorizontal),
                          child: Text(
                            snapshot.data!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        PokemonList(name: teamName)
                      ],
                    );
                  } else {
                    return Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayer.marginHorizontal),
                          child: Text(
                            'No cuenta con descripción',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        PokemonList(name: teamName)
                      ],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
