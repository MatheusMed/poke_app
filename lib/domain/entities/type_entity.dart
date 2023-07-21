import 'package:hive_flutter/adapters.dart';
import 'package:poke_app/domain/entities/species_entity.dart';

part 'type_entity.g.dart';

@HiveType(typeId: 5)
class TypeEntity {
  @HiveField(0)
  int slot;
  @HiveField(1)
  SpeciesEntity type;

  TypeEntity({
    required this.slot,
    required this.type,
  });
}
