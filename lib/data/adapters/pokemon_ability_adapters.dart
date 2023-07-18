import 'package:poke_app/data/adapters/pokemon_species_adapters.dart';

import '../../domain/entities/ability_entity.dart';

class PokemonAbilityAdapters {
  static AbilityEntity fromMap(dynamic map) {
    return AbilityEntity(
      ability: PokemonSpeciesAdapters.fromMap(map["ability"]),
      isHidden: map["is_hidden"] ?? '',
      slot: map["slot"] ?? 0,
    );
  }
}
