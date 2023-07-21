import 'package:hive/hive.dart';

part 'species_entity.g.dart';

@HiveType(typeId: 4)
class SpeciesEntity {
  @HiveField(0)
  String name;
  @HiveField(1)
  String url;

  SpeciesEntity({
    required this.name,
    required this.url,
  });
}
