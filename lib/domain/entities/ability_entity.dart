import 'package:poke_app/domain/entities/species_entity.dart';

class AbilityEntity {
  SpeciesEntity ability;
  bool isHidden;
  int slot;

  AbilityEntity({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });
}
