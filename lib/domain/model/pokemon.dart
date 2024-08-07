import 'package:hive/hive.dart';

part 'pokemon.g.dart';

@HiveType(typeId: 0)
class Pokemon extends HiveObject {
  @HiveField(0)
  late String num;

  @HiveField(1)
  late String name;

  @HiveField(2)
  late String img;

  @HiveField(3)
  late List<String> type;

  @HiveField(4)
  late About about;

  @HiveField(5)
  late Stats stats;

  @HiveField(6)
  late List<Evolution> evolutions;

  Pokemon({
    required this.num,
    required this.name,
    required this.img,
    required this.type,
    required this.about,
    required this.stats,
    required this.evolutions,
  });
}

@HiveType(typeId: 1)
class About extends HiveObject {
  @HiveField(0)
  late String height;

  @HiveField(1)
  late String weight;

  @HiveField(2)
  late String category;

  @HiveField(3)
  late List<String> weaknesses;

  About({
    required this.height,
    required this.weight,
    required this.category,
    required this.weaknesses,
  });
}

@HiveType(typeId: 2)
class Stats extends HiveObject {
  @HiveField(0)
  late int hp;

  @HiveField(1)
  late int attack;

  @HiveField(2)
  late int defense;

  @HiveField(3)
  late int spAttack;

  @HiveField(4)
  late int spDefense;

  @HiveField(5)
  late int speed;

  Stats({
    required this.hp,
    required this.attack,
    required this.defense,
    required this.spAttack,
    required this.spDefense,
    required this.speed,
  });
}

@HiveType(typeId: 3)
class Evolution extends HiveObject {
  @HiveField(0)
  late String num;

  @HiveField(1)
  late String name;

  Evolution({
    required this.num,
    required this.name,
  });
}
