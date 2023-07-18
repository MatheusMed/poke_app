import 'package:poke_app/data/adapters/pokemon_species_adapters.dart';
import 'package:poke_app/domain/entities/type_entity.dart';

class PokemonTypeAdapters {
  static TypeEntity fromMap(dynamic map) {
    return TypeEntity(
      slot: map["slot"],
      type: PokemonSpeciesAdapters.fromMap(map["type"]),
    );
  }
}
