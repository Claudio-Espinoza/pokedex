import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_demo/common/enum/type_colors.dart';
import 'package:pokedex_demo/common/helper/util.dart';
import 'package:pokedex_demo/common/widget/custom_buton.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_themes.dart';
import 'package:pokedex_demo/domain/model/pokemon.dart';
import 'package:pokedex_demo/domain/service/pokemon_service.dart';
import 'package:pokedex_demo/presentation/pokedex/page/pokemon_profile.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController controller;
  final PokemonService pokemonService = PokemonService();

  SearchInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(color: AppColors.font, fontSize: 18.0),
      decoration: AppThemes.inputTheme,
      onTap: () {
        // Lleva a la pagina de busqueda en cuanto se hace click en el input
        /*

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SearchResultsView(
              controller: controller,
              pokemonService: pokemonService,
            ),
          ),
        );
      */},
      onSubmitted: (text) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SearchResultsView(
              controller: controller,
              pokemonService: pokemonService,
            ),
          ),
        );
      },
    );
  }
}

class SearchResultsView extends StatefulWidget {
  final TextEditingController controller;
  final PokemonService pokemonService;

  const SearchResultsView({
    super.key,
    required this.controller,
    required this.pokemonService,
  });

  @override
  _SearchResultsViewState createState() => _SearchResultsViewState();
}

class _SearchResultsViewState extends State<SearchResultsView> {
  List<Pokemon> allPokemon = [];
  List<Pokemon> filteredPokemon = [];

  @override
  void initState() {
    super.initState();
    _loadPokemon();
    widget.controller.addListener(_filterPokemon);


    
  }

  Future<void> _loadPokemon() async {
    try {
      List<Pokemon> pokemonList = await widget.pokemonService.getAllPokemon();
      setState(() {
        allPokemon = pokemonList;
        _filterPokemon();
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error loading Pokémon: $e');
      }
    }
  }

  void _filterPokemon() {
    setState(() {
      filteredPokemon = allPokemon
          .where((pokemon) =>
              pokemon.name.toLowerCase().contains(widget.controller.text.toLowerCase()))
          .toList();
    });
  }

  @override
  void dispose() {
    widget.controller.removeListener(_filterPokemon);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header de busqueda
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 45, bottom: 16),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: AppColors.font),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: widget.controller,
                    
                    style: const TextStyle(color: AppColors.font, fontSize: 18.0),
                    decoration: AppThemes.inputTheme,
                    onSubmitted: (text) {
                      _filterPokemon();
                    },
                  ),
                ),
              ],
            ),
          ),
          
          // Lista de tarjetas con los pokemon que tienen coincidencia en la búsqueda
          Expanded(
            child: ListView.builder(
              itemCount: filteredPokemon.length,
              itemBuilder: (context, index) {
                final pokemon = filteredPokemon[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
                  child: CustomButton(
                    text: "${pokemon.name}; ${pokemon.type.join(', ')}",
                    onPressed: () => Util.redirectToPage(
                      context,
                      PokemonProfile(pokemon: pokemon),
                    ),
                    backgroundColor: TypeColor.pokemonTypeColors[
                        pokemon.type[0].toString()],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
