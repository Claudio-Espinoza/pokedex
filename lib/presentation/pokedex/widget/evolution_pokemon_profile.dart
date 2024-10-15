import 'package:flutter/material.dart';
import 'package:pokedex_demo/common/enum/type_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_themes.dart';
import 'package:pokedex_demo/domain/model/pokemon.dart';
import 'package:pokedex_demo/domain/service/pokemon_service.dart'; // Importa tu servicio

class EvolutionPokemonProfile extends StatelessWidget {
  const EvolutionPokemonProfile({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    // Si el Pokémon no tiene evoluciones, mostramos un mensaje.
    if (pokemon.evolutions.isEmpty) {
      return const Center(
        child: Text('Este Pokémon no tiene evoluciones.'),
      );
    }

    return Wrap(
      spacing: 10, // Espaciado horizontal entre tarjetas
      runSpacing: 10, // Espaciado vertical entre tarjetas
      children: pokemon.evolutions.map((evolution) {
        return FutureBuilder<Pokemon>(
          future: PokemonService().findByName(evolution.name), // Llama al servicio para obtener la evolución
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator(); // Indicador de carga
            } else if (snapshot.hasError) {
              return const Text('Error al cargar la evolución');
            } else if (snapshot.hasData) {
              final evoPokemon = snapshot.data!;
              return EvolutionCard(pokemon: evoPokemon); // Muestra la tarjeta de evolución
            } else {
              return const Text('Evolución no encontrada');
            }
          },
        );
      }).toList(), // Convierte el Iterable en una lista de widgets
    );
  }
}

// Widget separado para la tarjeta de evolución
class EvolutionCard extends StatelessWidget {
  final Pokemon pokemon;

  const EvolutionCard({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: TypeColor.pokemonTypeColors[pokemon.type[0]],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Imagen del Pokémon de la evolución
          Image.network(
            pokemon.img,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          Text(
            pokemon.name,
            style: TextStyle(
              fontFamily: 'LeagueSpartan',
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}
