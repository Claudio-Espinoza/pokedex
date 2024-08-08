import 'package:hive/hive.dart';

part 'team.g.dart';

@HiveType(typeId: 0)
class Team extends HiveObject {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late String description;

  @HiveField(2)
  late int contPokemon;

  @HiveField(3)
  late int maxPokemon;

  @HiveField(4)
  late List<PokemonTeam> pokemonTeam;
}

@HiveType(typeId: 1)
class PokemonTeam extends HiveObject {
  @HiveField(0)
  late String num;

  @HiveField(1)
  late String name_pokemon;

  @HiveField(2)
  late String img;

  @HiveField(3)
  late String attack;

  @HiveField(4)
  late String defense;

  @HiveField(5)
  late String hp;
}
