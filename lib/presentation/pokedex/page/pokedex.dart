import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pokedex_demo/common/enum/type_colors.dart';
import 'package:pokedex_demo/common/widget/custom_buton.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';
import 'package:pokedex_demo/common/widget/search_bard.dart';
import 'package:pokedex_demo/domain/model/pokemon.dart';
import 'package:pokedex_demo/domain/service/pokemon_service.dart';
import 'package:pokedex_demo/presentation/landing/page/landing.dart';
import 'package:pokedex_demo/common/enum/types.dart';

class Pokedex extends StatefulWidget {
  const Pokedex({super.key});

  @override
  _PokedexState createState() => _PokedexState();
}

/*

class Pokemon {
  var name;
  var tipo = List.empty(growable: true);

  Pokemon({
    required this.name,
    required this.tipo,
  });
}
*/
class _PokedexState extends State<Pokedex> {
  late TextEditingController searchController;
  Future<List<Pokemon>> pokemons = PokemonService().getAllPokemon();
  List<Pokemon> seleccionados = <Pokemon>[];

  Set<Type> tiposFilter = <Type>{};

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  List<Pokemon> _filterPokemons(List<Pokemon> pokemons) {
    if (tiposFilter.isEmpty) {
      return pokemons;
    } else {
      return pokemons.where((pokemon) {
        return tiposFilter.any((tipo) => pokemon.type.contains(tipo.type));
      }).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80,
          right: AppLayer.marginHorizontal,
          left: AppLayer.marginHorizontal,
        ),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () => redirectToPage(const LandingPage()),
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ],
                ),
                Title(
                  color: AppColors.font,
                  child: const Text(
                    "Pokédex",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(width: 30),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: AppLayer.paddingButton, top: AppLayer.paddingTop),
              child: SearchInput(controller: searchController),
            ),
            SizedBox(
              height: 55,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: Type.values.map((Type tipo) {
                  final isSelected = tiposFilter.contains(tipo);
                  return Container(
                    width: 55,
                    height: 55,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            tiposFilter.remove(tipo);
                          } else {
                            tiposFilter.add(tipo);
                          }
                        });
                      },
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          isSelected
                              ? const Color.fromARGB(80, 0, 0, 0)
                              : const Color.fromARGB(0, 0, 0, 0),
                          BlendMode.multiply,
                        ),
                        child: Image.asset(tipo.path),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Text("Pokemon encontrados:",
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w300)),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder<List<Pokemon>>(
                future: pokemons,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  } else if (snapshot.hasData) {
                    List<Pokemon> filteredPokemons =
                        _filterPokemons(snapshot.data!);
                    return ListView.builder(
                      itemCount: filteredPokemons.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: AppLayer.marginInternal),
                          child: CustomButton(
                              text:
                                  "${filteredPokemons[index].name}; ${filteredPokemons[index].type.join(', ')}",
                              onPressed: () =>
                                  redirectToPage(const LandingPage()),
                              backgroundColor: TypeColor.pokemonTypeColors[filteredPokemons[index].type[0].toString()]
                        ));
                      },
                    );
                  } else {
                    return const Center(child: Text("No Pokémon found"));
                  }
                },
              ),
            ),
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
