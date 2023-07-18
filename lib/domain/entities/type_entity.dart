import 'package:poke_app/domain/entities/species_entity.dart';

class TypeEntity {
  int slot;
  SpeciesEntity type;

  TypeEntity({
    required this.slot,
    required this.type,
  });
}
