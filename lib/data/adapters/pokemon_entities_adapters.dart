import 'package:poke_app/data/adapters/pokemon_ability_adapters.dart';
import 'package:poke_app/data/adapters/pokemon_game_index_adapters.dart';
import 'package:poke_app/data/adapters/pokemon_type_adapters.dart';
import 'package:poke_app/domain/entities/game_index_entitie.dart';
import 'package:poke_app/domain/entities/type_entity.dart';

import '../../domain/entities/ability_entity.dart';
import '../../domain/entities/pokemon_entities.dart';

class PokemonsEntitiesAdapters {
  static PokemonsEntities fromMap(dynamic map) {
    return PokemonsEntities(
      name: map["name"] ?? "No name",
      image: map['sprites']['front_default'] ?? ' ',
      url: map["url"] ?? "No url",
      abilities: List<AbilityEntity>.from(
        map["abilities"].map(
          (x) => PokemonAbilityAdapters.fromMap(x),
        ),
      ),
      gameIndices: List<GameIndexEntitie>.from(
        map["game_indices"].map(
          (x) => PokemonGameIndexAdapters.fromMap(x),
        ),
      ),
      types: List<TypeEntity>.from(
        map["types"].map(
          (x) => PokemonTypeAdapters.fromMap(x),
        ),
      ),
      weight: map["weight"] ?? 0,
    );
  }
}
