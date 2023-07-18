import '../entities/pokemon_entities.dart';
import '../repositories/pokemon_repository_domain.dart';

abstract class IPokemonUsescases {
  Future<List<PokemonsEntities>> getAll({required int limit});
}

class PokemonUsescases implements IPokemonUsescases {
  final IPokemonRepositoryDomain _iSearchRepository;

  PokemonUsescases(this._iSearchRepository);

  @override
  Future<List<PokemonsEntities>> getAll({required int limit}) async {
    return await _iSearchRepository.getAll(limit: limit);
  }
}
