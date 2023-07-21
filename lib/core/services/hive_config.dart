import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/entities/ability_entity.dart';
import '../../domain/entities/game_index_entitie.dart';
import '../../domain/entities/pokemon_entities.dart';
import '../../domain/entities/species_entity.dart';
import '../../domain/entities/type_entity.dart';

class HiveConfig {
  static Future init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(AbilityEntityAdapter());
    Hive.registerAdapter(GameIndexEntitieAdapter());
    Hive.registerAdapter(PokemonsEntitiesAdapter());
    Hive.registerAdapter(SpeciesEntityAdapter());
    Hive.registerAdapter(TypeEntityAdapter());
    await Hive.openBox('pokemonFavoritos');
  }
}
