import 'package:isar/isar.dart';

part 'pokemon.g.dart';

@collection
@Name("pokemon")
class Pokemon {
  @Name("id")
  Id? id;

  @Index(name: "num", unique: true)
  String? num;

  @Name("name")
  String? name;

  @Name("img")
  String? img;

  @Name("type")
  List<String>? type;

  @Name("about")
  About? about;

  @Name("stats")
  Stats? stats;

  @Name("nextEvolution")
  List<Evolution>? nextEvolution;
}

@embedded
class Stats {
  @Name("hp")
  String? hp;

  @Name("base_attack")
  String? baseAttack;

  @Name("base_defense")
  String? baseDefense;

  @Name("especial_attack")
  String? especialAttack;

  @Name("especial_defense")
  String? especialDefense;

  @Name("speed")
  String? speed;
}

@embedded
class About {
  @Name("height")
  String? height;

  @Name("weight")
  String? weight;

  @Name("category")
  String? category;

  @Name("weaknesses")
  List<String>? weaknesses;
}

@embedded
class Evolution {
  @Name("num_evolution")
  String? numEvolution;

  @Name("name_evolution")
  String? nameEvolution;
}
