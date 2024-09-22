import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:pokedex_demo/domain/model/team.dart';

class TeamService {
  Future<void> addPokemonToTeam(int teamIndex, PokemonTeam pokemon) async {
    try {
      Box<Team> teamBox = await Hive.openBox<Team>('teamBox');
      Team? team = teamBox.getAt(teamIndex);
      if (team != null) {
        team.pokemonTeam.add(pokemon);
        team.save();
      } else {
        if (kDebugMode) {
          print('Team not found at index $teamIndex');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error adding Pokemon to Team: $e');
      }
    }
  }

  Future<Team?> getTeamIndexByName(String teamName) async {
    try {
      Box<Team> teamBox = await Hive.openBox<Team>('teamBox');
      for (int i = 0; i < teamBox.length; i++) {
        Team? team = teamBox.getAt(i);
        if (team != null && team.nameTeam == teamName) {
          return teamBox.getAt(i);
        }
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        print('Error getting team index by name: $e');
      }
      return null;
    }
  }

  Future<String?> getDescriptionByName(String teamName) async {
    try {
      Box<Team> teamBox = await Hive.openBox<Team>('teamBox');

      for (int i = 0; i < teamBox.length; i++) {
        Team? team = teamBox.getAt(i);
        if (team != null && team.nameTeam == teamName) {
          return team.descriptionTeam;
        }
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        print('Error getting team index by name: $e');
      }
      return null;
    }
  }

  Future<List<PokemonTeam>> getPokemonList(name) async {
    try {
      Team? team = await getTeamIndexByName(name);
      if (team != null) {
        return team.pokemonTeam;
      } else {
        return [];
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error getting Pokemon list: $e');
      }
      return [];
    }
  }

  Future<void> saveTeam(Team team) async {
    try {
      Box<Team> teamBox = await Hive.openBox<Team>('teamBox');
      await teamBox.add(team);
    } catch (e) {
      if (kDebugMode) {
        print('Error saving Team data: $e');
      }
    }
  }

  Future<void> printAllTeam(List<Team> teamList) async {
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

  Future<void> fetchAndStoreTeam() async {
    //Es de prueba eliminar en produccion
    try {
      List<Team> exampleTeams = [
        Team(
            nameTeam: 'Equipo piedra',
            contPokemon: 5,
            maxPokemon: 5,
            descriptionTeam:
                'Este es el equipo piedra piedre dentro de la piedra',
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
              PokemonTeam(
                  numTeam: '3',
                  namePokemon: 'Ivysaur',
                  imgTeam:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png',
                  attackTeam: '62',
                  defenseTeam: '63',
                  hpTeam: '60'),
              PokemonTeam(
                  numTeam: '4',
                  namePokemon: 'Ivysaur',
                  imgTeam:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png',
                  attackTeam: '62',
                  defenseTeam: '63',
                  hpTeam: '60'),
              PokemonTeam(
                  numTeam: '5',
                  namePokemon: 'Ivysaur',
                  imgTeam:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png',
                  attackTeam: '62',
                  defenseTeam: '63',
                  hpTeam: '60'),
            ]),
      ];
      Box<Team> teamBox = await Hive.openBox<Team>('teamBox');

      if (teamBox.isEmpty) {
        for (var team in exampleTeams) {
          await teamBox.add(team);
        }
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
}
