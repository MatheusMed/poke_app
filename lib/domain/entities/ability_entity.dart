import 'package:hive_flutter/adapters.dart';
import 'package:poke_app/domain/entities/species_entity.dart';

part 'ability_entity.g.dart';

@HiveType(typeId: 2)
class AbilityEntity {
  @HiveField(0)
  SpeciesEntity ability;
  @HiveField(1)
  bool isHidden;
  @HiveField(2)
  int slot;

  AbilityEntity({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });
}
