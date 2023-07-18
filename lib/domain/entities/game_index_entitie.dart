import 'package:poke_app/domain/entities/species_entity.dart';

class GameIndexEntitie {
  int gameIndex;
  SpeciesEntity version;

  GameIndexEntitie({
    required this.gameIndex,
    required this.version,
  });
}
