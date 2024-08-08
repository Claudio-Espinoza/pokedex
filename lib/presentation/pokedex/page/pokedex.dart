import 'package:flutter/material.dart';
import 'package:pokedex_demo/common/widget/custom_buton.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';
import 'package:pokedex_demo/common/widget/search_bard.dart';
import 'package:pokedex_demo/presentation/landing/page/landing.dart';

class Pokedex extends StatefulWidget {
  const Pokedex({super.key});

  @override
  _PokedexState createState() => _PokedexState();
}

class Pokemon {
  var name;
  var tipo = List.empty(growable: true);

  Pokemon({
    required this.name,
    required this.tipo,
  });
}

enum Tipos { Planta, Veneno, Agua, Fuego, Aire, Tierra }

class _PokedexState extends State<Pokedex> {
  late TextEditingController searchController;
  List<Pokemon> pokemons = [
    Pokemon(name: "Bulbasaur", tipo: ["Planta", "Veneno"]),
    Pokemon(name: "Squirtle", tipo: ["Agua"]),
    Pokemon(name: "Venusaur", tipo: ["Planta", "Veneno"])
  ];
  List<Pokemon> seleccionados = <Pokemon>[];
  Set<Tipos> tiposFilter = <Tipos>{};

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    seleccionados = pokemons;
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _filterPokemons() {
    setState(() {
      if (tiposFilter.isEmpty) {
        seleccionados = pokemons;
      } else {
        seleccionados = pokemons.where((pokemon) {
          return tiposFilter.any((tipo) => pokemon.tipo.contains(tipo.name));
        }).toList();
      }
    });
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
            Wrap(
              spacing: 5.0,
              children: Tipos.values.map((Tipos tipo) {
                return FilterChip(
                  labelStyle: TextStyle(),
                  label: Text(tipo.name),
                  selected: tiposFilter.contains(tipo),
                  onSelected: (bool selected) {
                    setState(() {
                      if (selected) {
                        tiposFilter.add(tipo);
                      } else {
                        tiposFilter.remove(tipo);
                      }
                      _filterPokemons();
                    });
                  },
                );
              }).toList(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: seleccionados.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(bottom: AppLayer.marginInternal),
                    child: CustomButton(
                        text: seleccionados[index].name +
                            "; " +
                            seleccionados[index].tipo.join(', '),
                        onPressed: () => redirectToPage(const LandingPage()),
                        backgroundColor: AppColors.green),
                  );
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
