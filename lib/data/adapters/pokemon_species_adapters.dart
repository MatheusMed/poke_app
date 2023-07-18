import 'package:poke_app/domain/entities/species_entity.dart';

class PokemonSpeciesAdapters {
  static SpeciesEntity fromMap(dynamic map) {
    return SpeciesEntity(
      name: map["name"] ?? '',
      url: map["url"] ?? '',
    );
  }
}
