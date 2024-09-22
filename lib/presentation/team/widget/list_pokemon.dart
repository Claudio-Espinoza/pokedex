import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';
import 'package:pokedex_demo/domain/model/team.dart';
import 'package:pokedex_demo/domain/service/team_service.dart';
import 'package:pokedex_demo/presentation/team/widget/pokemon_detail.dart';

class PokemonList extends HookWidget {
  final String name;
  const PokemonList({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    Future<List<PokemonTeam>> teams = TeamService().getPokemonList(name);

    return Expanded(
      child: FutureBuilder<List<PokemonTeam>>(
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
                return const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayer.marginHorizontal,
                      vertical: AppLayer.marginHorizontal - 20),
                  child: PokemonDetail(),
                );
              },
            );
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
