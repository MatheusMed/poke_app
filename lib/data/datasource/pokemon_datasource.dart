import '../../core/failure/search_failure.dart';
import '../../core/services/dio_services.dart';
import '../../domain/entities/pokemon_entities.dart';
import '../adapters/pokemon_entities_adapters.dart';

abstract class IPokemonDatasource {
  Future<List<PokemonsEntities>> getAll({required int limit});
}

class PokemonDatasource implements IPokemonDatasource {
  final DioServices _dioServices;
  PokemonDatasource(this._dioServices);

  @override
  Future<List<PokemonsEntities>> getAll({required int limit}) async {
    try {
      final resp =
          await _dioServices.dio().get('pokemon?offset=$limit&limit=$limit');

      final data = (resp.data["results"] as List);

      final listaPokemon = <PokemonsEntities>[];

      for (var i = 1; i <= data.length; i++) {
        final res = await _dioServices.dio().get('pokemon/$i/');
        final dataResp = PokemonsEntitiesAdapters.fromMap(res.data);

        listaPokemon.add(dataResp);
      }

      return listaPokemon;
    } catch (e) {
      throw PokemonFailure(message: e.toString());
    }
  }
}
