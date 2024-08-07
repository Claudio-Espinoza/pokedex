import 'package:isar/isar.dart';
import 'package:pokedex_demo/core/configs/db/isar_helper.dart';
import 'package:pokedex_demo/domain/model/pokemon.dart';

class TeacherService {
  late Future<Isar> db;

  TeacherService() {
    db = IsarHelper().db;
  }

  Future<List<Pokemon>> getAllPokemons() async {
    final isar = await db;

    return await isar.pokemons.where().findAll();
  }

  Future<bool> savePokemon(Pokemon newTeacher) async {
    try {
      final isar = await db;

      await isar.writeTxn(() async {
        await isar.pokemons.put(newTeacher);
      });
      return true;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }
}
