// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TeamAdapter extends TypeAdapter<Team> {
  @override
  final int typeId = 0;

  @override
  Team read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Team()
      ..name = fields[0] as String
      ..description = fields[1] as String
      ..contPokemon = fields[2] as int
      ..maxPokemon = fields[3] as int
      ..pokemonTeam = (fields[4] as List).cast<PokemonTeam>();
  }

  @override
  void write(BinaryWriter writer, Team obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.contPokemon)
      ..writeByte(3)
      ..write(obj.maxPokemon)
      ..writeByte(4)
      ..write(obj.pokemonTeam);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokemonTeamAdapter extends TypeAdapter<PokemonTeam> {
  @override
  final int typeId = 1;

  @override
  PokemonTeam read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonTeam()
      ..num = fields[0] as String
      ..name_pokemon = fields[1] as String
      ..img = fields[2] as String
      ..attack = fields[3] as String
      ..defense = fields[4] as String
      ..hp = fields[5] as String;
  }

  @override
  void write(BinaryWriter writer, PokemonTeam obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.num)
      ..writeByte(1)
      ..write(obj.name_pokemon)
      ..writeByte(2)
      ..write(obj.img)
      ..writeByte(3)
      ..write(obj.attack)
      ..writeByte(4)
      ..write(obj.defense)
      ..writeByte(5)
      ..write(obj.hp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonTeamAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
