import 'package:flutter/material.dart';
// import 'package:pokedex_demo/domain/service/pokemon_service.dart';

class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    // final pokemonService = PokemonService();
    // pokemonService.fetchAndStorePokemon();
    // pokemonService.printPokemonFromBox();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Pagina'),
      ),
      body: const Center(
        child: Text(
          'Vista de team',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
