import 'package:hive/hive.dart';
import 'package:poke_app/data/database/i_database_hive.dart';
import 'package:poke_app/domain/entities/pokemon_entities.dart';

class HiveImplements implements IDatabaseHive {
  @override
  Future<List<PokemonsEntities>> getListaPokemonSave() async {
    Box box = Hive.box('pokemonFavoritos');
    return box.values.toList().cast<PokemonsEntities>();
  }

  @override
  savePokemon(PokemonsEntities pokemonsEntities) async {
    Box box = Hive.box('pokemonFavoritos');

    await box.add(PokemonsEntities(
      name: pokemonsEntities.name,
      url: pokemonsEntities.url,
      image: pokemonsEntities.image,
      abilities: pokemonsEntities.abilities,
      gameIndices: pokemonsEntities.gameIndices,
      types: pokemonsEntities.types,
      weight: pokemonsEntities.weight,
    ));
  }

  @override
  deletePokemonSave(int index) async {
    Box box = Hive.box('pokemonFavoritos');
    await box.deleteAt(index);
  }
}
