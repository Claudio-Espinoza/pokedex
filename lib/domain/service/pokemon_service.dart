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
        if (box.isEmpty) {
          for (var pokemonJson in pokemonList) {
            var pokemon = Pokemon.fromJson(pokemonJson);
            pokemon.stats = await getStatByPokemonName(pokemon.name);
            await box.put(pokemon.num, pokemon);
          }

          if (kDebugMode) {
            print('Pokemon data stored successfully');
          }
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

  Future<Stats> getStatByPokemonName(String name) async {
    name = name.toLowerCase();
    String url = 'https://pokeapi.co/api/v2/pokemon/$name/';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['stats'] != null) {
          return Stats.fromJson(data);
        } else {
          if (kDebugMode) {
            print('No stats found for Pokemon: $name');
          }
          return Stats(
            //Este esta aqui por que el future me exigia un caso de excepcion y no aceptaba los throw
            hp: 0,
            attack: 0,
            defense: 0,
            spAttack: 0,
            spDefense: 0,
            speed: 0,
          );
        }
      } else {
        throw Exception('Failed to load Pokemon stats');
      }
    } catch (error) {
      if (kDebugMode) {
        print('Error fetching Pokemon data: $error');
      }
      return Stats(
        hp: 0,
        attack: 0,
        defense: 0,
        spAttack: 0,
        spDefense: 0,
        speed: 0,
      );
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

  Future<Pokemon> findByName(String name) async {
    try {
      Box<Pokemon> pokemons = await Hive.openBox<Pokemon>('pokemonBox');

      if (pokemons.isEmpty) {
        throw Exception(
            'Failed to fetch Pokemon: box is empty in findByName()');
      } else {
        return pokemons.values.firstWhere((pokemon) => pokemon.name == name);
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching Pokemon data: $e');
      }
      throw Exception('Failed to fetch Pokemon in findByName()');
    }
  }
}
