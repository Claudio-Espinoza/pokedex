import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokedex_demo/common/helper/util.dart';
import 'package:pokedex_demo/common/widget/custom_buton.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';
import 'package:pokedex_demo/domain/model/team.dart';
import 'package:pokedex_demo/domain/service/team_service.dart';
import 'package:pokedex_demo/presentation/team/page/team_composition.dart';

class ListTeam extends HookWidget {
  const ListTeam({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<Team>> teams = TeamService().getAllTeam();

    return FutureBuilder<List<Team>>(
      future: teams,
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          // Eliminar duplicados usando un Set
          final uniqueTeams = snapshot.data!.toSet().toList();

          return ListView.builder(
            itemCount: uniqueTeams.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppLayer.marginHorizontal,
                    vertical: AppLayer.marginHorizontal - 20),
                child: CustomButton(
                  text: uniqueTeams[index].nameTeam,
                  onPressed: () => Util.redirectToPage(context,
                      CompositionTeam(teamName: uniqueTeams[index].nameTeam)),
                  backgroundColor: AppColors.red,
                ),
              );
            },
          );
        } else {
          return const Center(child: Text('No teams available'));
        }
        // Add a return statement here
      },
    );
  }
}
