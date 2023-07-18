// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: non_constant_identifier_names

import 'package:poke_app/domain/entities/ability_entity.dart';
import 'package:poke_app/domain/entities/type_entity.dart';

import 'game_index_entitie.dart';

class PokemonsEntities {
  final String name;
  final String url;
  final String image;
  List<AbilityEntity> abilities;
  List<TypeEntity> types;
  final int weight;

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
