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

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      num: json['num'] ?? '',
      name: json['name'] ?? '',
      img: json['img'] ?? '',
      type: List<String>.from(json['type'] ?? []),
      about: About.fromJson(json),
      stats: Stats.fromJson(json),
      evolutions: (json['next_evolution'] as List<dynamic>?)
              ?.map((e) => Evolution.fromJson(e))
              .toList() ??
          [],
    );
  }

  @override
  String toString() {
    return 'Pokemon $num: $name | $stats\nEvolutions: $evolutions\n';
  }
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

  factory About.fromJson(Map<String, dynamic> json) {
    return About(
      height: json['height'] ?? '',
      weight: json['weight'] ?? '',
      category: json['category'] ?? '',
      weaknesses: List<String>.from(json['weaknesses'] ?? []),
    );
  }
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

  factory Stats.fromJson(Map<String, dynamic> json) {
    int getStatValue(String statName) {
      try {
        return json['stats'].firstWhere(
            (stat) => stat['stat']['name'] == statName)['base_stat'];
      } catch (e) {
        return 0;
      }
    }

    return Stats(
      hp: getStatValue('hp'),
      attack: getStatValue('attack'),
      defense: getStatValue('defense'),
      spAttack: getStatValue('special-attack'),
      spDefense: getStatValue('special-defense'),
      speed: getStatValue('speed'),
    );
  }

  @override
  String toString() {
    return 'StatDetail(hp: $hp, attack: $attack, defense: $defense, sp_attack: $spAttack, sp_defense: $spDefense, speed: $speed)';
  }
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

  factory Evolution.fromJson(Map<String, dynamic> json) {
    return Evolution(
      num: json['num'] ?? '',
      name: json['name'] ?? '',
    );
  }

  @override
  String toString() {
    return 'Pokemon $num: name: $name';
  }
}
