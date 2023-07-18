import '../../domain/entities/pokemon_entities.dart';
import '../../domain/repositories/pokemon_repository_domain.dart';
import '../datasource/pokemon_datasource.dart';

class PokemonRepositoryData implements IPokemonRepositoryDomain {
  final IPokemonDatasource _iPokemonDatasource;

  PokemonRepositoryData(this._iPokemonDatasource);
  @override
  Future<List<PokemonsEntities>> getAll({required int limit}) async {
    return await _iPokemonDatasource.getAll(limit: limit);
  }
}
