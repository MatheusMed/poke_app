import 'package:poke_app/data/adapters/pokemon_species_adapters.dart';
import 'package:poke_app/domain/entities/game_index_entitie.dart';

class PokemonGameIndexAdapters {
  static GameIndexEntitie fromMap(dynamic map) {
    return GameIndexEntitie(
      gameIndex: map["game_index"] ?? 0,
      version: PokemonSpeciesAdapters.fromMap(map["version"]),
    );
  }
}
