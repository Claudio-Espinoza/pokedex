import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pokedex_demo/core/configs/themes/app_themes.dart';
import 'package:pokedex_demo/domain/model/pokemon.dart';
import 'package:pokedex_demo/domain/model/team.dart';
import 'package:pokedex_demo/domain/service/pokemon_service.dart';
import 'package:pokedex_demo/presentation/landing/page/landing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(PokemonAdapter());
  Hive.registerAdapter(AboutAdapter());
  Hive.registerAdapter(StatsAdapter());
  Hive.registerAdapter(EvolutionAdapter());
  Hive.registerAdapter(TeamAdapter());
  Hive.registerAdapter(PokemonTeamAdapter());

  PokemonService pokemonService = PokemonService();
  await pokemonService.fetchAndStorePokemon();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pokedex',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      home: const LandingPage(),
    );
  }
}
