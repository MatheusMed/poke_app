import '../../domain/entities/pokemon_entities.dart';

abstract class IDatabaseHive {
  savePokemon(PokemonsEntities pokemonsEntities);
  Future<List<PokemonsEntities>> getListaPokemonSave();
  deletePokemonSave(int index);
}
