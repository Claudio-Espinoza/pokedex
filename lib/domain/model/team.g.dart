// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TeamAdapter extends TypeAdapter<Team> {
  @override
  final int typeId = 4;

  @override
  Team read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Team(
      nameTeam: fields[0] as String,
      descriptionTeam: fields[1] as String,
      contPokemon: fields[2] as int,
      maxPokemon: fields[3] as int,
      pokemonTeam: (fields[4] as List?)?.cast<PokemonTeam>(),
    );
  }

  @override
  void write(BinaryWriter writer, Team obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.nameTeam)
      ..writeByte(1)
      ..write(obj.descriptionTeam)
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
  final int typeId = 5;

  @override
  PokemonTeam read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonTeam(
      numTeam: fields[0] as String,
      namePokemon: fields[1] as String,
      imgTeam: fields[2] as String,
      attackTeam: fields[3] as String,
      defenseTeam: fields[4] as String,
      hpTeam: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonTeam obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.numTeam)
      ..writeByte(1)
      ..write(obj.namePokemon)
      ..writeByte(2)
      ..write(obj.imgTeam)
      ..writeByte(3)
      ..write(obj.attackTeam)
      ..writeByte(4)
      ..write(obj.defenseTeam)
      ..writeByte(5)
      ..write(obj.hpTeam);
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
