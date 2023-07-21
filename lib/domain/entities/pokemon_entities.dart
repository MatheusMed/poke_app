// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: non_constant_identifier_names

import 'package:hive/hive.dart';
import 'package:poke_app/domain/entities/ability_entity.dart';
import 'package:poke_app/domain/entities/type_entity.dart';

import 'game_index_entitie.dart';

part 'pokemon_entities.g.dart';

@HiveType(typeId: 1)
class PokemonsEntities {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String url;
  @HiveField(2)
  final String image;
  @HiveField(3)
  List<AbilityEntity> abilities;
  @HiveField(4)
  List<TypeEntity> types;
  @HiveField(5)
  final int weight;
  @HiveField(6)
  List<GameIndexEntitie> gameIndices;

  PokemonsEntities({
    required this.name,
    required this.url,
    required this.image,
    required this.abilities,
    required this.gameIndices,
    required this.types,
    required this.weight,
  });
}
