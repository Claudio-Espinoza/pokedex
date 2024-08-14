import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:pokedex_demo/domain/model/team.dart';

class TeamService {
  Future<void> fetchAndStoreTeam() async {
    //Es de prueba eliminar en produccion
    try {
      List<Team> exampleTeams = [
        Team(
            nameTeam: 'Equipo piedra',
            contPokemon: 5,
            maxPokemon: 5,
            descriptionTeam: 'Equipo de piedra',
            pokemonTeam: [
              PokemonTeam(
                  numTeam: '1',
                  namePokemon: 'Bulbasaur',
                  imgTeam:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
                  attackTeam: '49',
                  defenseTeam: '49',
                  hpTeam: '45'),
              PokemonTeam(
                  numTeam: '2',
                  namePokemon: 'Ivysaur',
                  imgTeam:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png',
                  attackTeam: '62',
                  defenseTeam: '63',
                  hpTeam: '60'),
            ]),
        Team(
            nameTeam: 'Equipo fuego',
            contPokemon: 2,
            maxPokemon: 5,
            descriptionTeam: 'Equipo de fuego',
            pokemonTeam: [
              PokemonTeam(
                  numTeam: '1',
                  namePokemon: 'Charmander',
                  imgTeam:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png',
                  attackTeam: '52',
                  defenseTeam: '43',
                  hpTeam: '39'),
              PokemonTeam(
                  numTeam: '2',
                  namePokemon: 'Charmeleon',
                  imgTeam:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png',
                  attackTeam: '64',
                  defenseTeam: '58',
                  hpTeam: '58'),
            ]),
        Team(
            nameTeam: 'Equipo agua',
            contPokemon: 2,
            maxPokemon: 5,
            descriptionTeam: 'Equipo de agua',
            pokemonTeam: [
              PokemonTeam(
                  numTeam: '7',
                  namePokemon: 'Squirtle',
                  imgTeam:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png',
                  attackTeam: '48',
                  defenseTeam: '65',
                  hpTeam: '44'),
              PokemonTeam(
                  numTeam: '8',
                  namePokemon: 'Wartortle',
                  imgTeam:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/8.png',
                  attackTeam: '63',
                  defenseTeam: '80',
                  hpTeam: '59'),
            ])
      ];

      Box<Team> teamBox = await Hive.openBox<Team>('teamBox');

      for (var team in exampleTeams) {
        await teamBox.add(team);
      }

      if (kDebugMode) {
        print('Example teams stored successfully');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching Pokemon data: $e');
      }
    }
  }

  Future<List<Team>> getAllTeam() async {
    try {
      Box<Team> teams = await Hive.openBox<Team>('teamBox');

      if (teams.isEmpty) {
        throw Exception('Failed to fetch Team: box is empty in getAllTeam()');
      } else {
        return teams.values.toList();
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching Pokemon data: $e');
      }
      throw Exception('Failed to fetch Team in getAllTeam()');
    }
  }

  Future<void> printAllPokemon(List<Team> teamList) async {
    try {
      for (var team in teamList) {
        if (kDebugMode) {
          print('Name: ${team.nameTeam}');
          print('Number: ${team.contPokemon}');
          print('Height: ${team.descriptionTeam}');
          print('Weight: ${team.maxPokemon}');
          print(
              'Evolutions: ${team.pokemonTeam.map((e) => e.namePokemon).join(', ')}');
          print(
              'Evolutions: ${team.pokemonTeam.map((e) => e.attackTeam).join(', ')}');
          print(
              'Evolutions: ${team.pokemonTeam.map((e) => e.defenseTeam).join(', ')}');
          print(
              'Evolutions: ${team.pokemonTeam.map((e) => e.hpTeam).join(', ')}');
          print(
              'Evolutions: ${team.pokemonTeam.map((e) => e.numTeam).join(', ')}');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error printing Pokemon data: $e');
      }
    }
  }
}
