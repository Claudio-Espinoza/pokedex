import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pokedex_demo/domain/model/pokemon.dart';

class IsarHelper {
  late Future<Isar> db;

  IsarHelper() {
    db = openDb();
  }

  Future<Isar> openDb() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [
          PokemonSchema,
        ],
        directory: dir.path,
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance());
  }
}
