import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex_demo/domain/model/pokemon.dart';

class PokemonService {
  Future<void> fetchAndStorePokemon() async {
    const url =
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<dynamic> pokemonList = data['pokemon'];

        var box = await Hive.openBox<Pokemon>('pokemonBox');

        for (var pokemonJson in pokemonList) {
          var pokemon = Pokemon.fromJson(pokemonJson);
          await box.put(pokemon.num, pokemon);
        }

        if (kDebugMode) {
          print('Pokemon data stored successfully');
        }
      } else {
        throw Exception('Failed to load Pokemon data');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching Pokemon data: $e');
      }
    }
  }

  Future<List<Pokemon>> getAllPokemon() async {
    try {
      Box<Pokemon> pokemons = await Hive.openBox<Pokemon>('pokemonBox');

      if (pokemons.isEmpty) {
        throw Exception(
            'Failed to fetch Pokemon: box is empty in getAllPokemon()');
      } else {
        return pokemons.values.toList();
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching Pokemon data: $e');
      }
      throw Exception('Failed to fetch Pokemon in getAllPokemon()');
    }
  }

  Future<void> printAllPokemon(List<Pokemon> pokemonList) async {
    try {
      for (var pokemon in pokemonList) {
        if (kDebugMode) {
          print('Number: ${pokemon.num}');
          print('Type: ${pokemon.type.join(', ')}');
          print('Height: ${pokemon.about.height}');
          print('Weight: ${pokemon.about.weight}');
          print('Category: ${pokemon.about.category}');
          print('Weaknesses: ${pokemon.about.weaknesses.join(', ')}');
          print('HP: ${pokemon.stats.hp}');
          print('Attack: ${pokemon.stats.attack}');
          print('Defense: ${pokemon.stats.defense}');
          print('Sp. Attack: ${pokemon.stats.spAttack}');
          print('Sp. Defense: ${pokemon.stats.spDefense}');
          print('Speed: ${pokemon.stats.speed}');
          print(
              'Evolutions: ${pokemon.evolutions.map((e) => e.name).join(', ')}');
          print('---');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error printing Pokemon data: $e');
      }
    }
  }
}
