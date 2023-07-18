import '../entities/pokemon_entities.dart';

abstract class IPokemonRepositoryDomain {
  Future<List<PokemonsEntities>> getAll({required int limit});
}
