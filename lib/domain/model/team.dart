import 'package:hive/hive.dart';

part 'team.g.dart';

@HiveType(typeId: 4)
class Team extends HiveObject {
  @HiveField(0)
  late String nameTeam;

  @HiveField(1)
  late String descriptionTeam;

  @HiveField(2)
  late int contPokemon;

  @HiveField(3)
  late int maxPokemon;

  @HiveField(4)
  late List<PokemonTeam> pokemonTeam;

  Team({
    this.nameTeam = 'Nombre por defecto',
    this.descriptionTeam = 'Descripción por defecto',
    this.contPokemon = 0,
    this.maxPokemon = 5,
    List<PokemonTeam>? pokemonTeam,
  }) : pokemonTeam = (pokemonTeam ?? []);

  @override
  String toString() {
    return 'Team ($nameTeam): $descriptionTeam\nMiembros: $contPokemon/$maxPokemon\n$pokemonTeam';
  }
}

@HiveType(typeId: 5)
class PokemonTeam extends HiveObject {
  @HiveField(0)
  late String numTeam;

  @HiveField(1)
  late String namePokemon;

  @HiveField(2)
  late String imgTeam;

  @HiveField(3)
  late String attackTeam;

  @HiveField(4)
  late String defenseTeam;

  @HiveField(5)
  late String hpTeam;

  PokemonTeam(
      {required this.numTeam,
      required this.namePokemon,
      required this.imgTeam,
      required this.attackTeam,
      required this.defenseTeam,
      required this.hpTeam});

  @override
  String toString() {
    return 'Pokemon $numTeam:$namePokemon';
  }
}
