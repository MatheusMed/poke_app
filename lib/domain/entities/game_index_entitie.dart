import 'package:hive_flutter/adapters.dart';
import 'package:poke_app/domain/entities/species_entity.dart';

part 'game_index_entitie.g.dart';

@HiveType(typeId: 3)
class GameIndexEntitie {
  @HiveField(0)
  int gameIndex;
  @HiveField(1)
  SpeciesEntity version;

  GameIndexEntitie({
    required this.gameIndex,
    required this.version,
  });
}
