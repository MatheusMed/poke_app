// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_entities.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonsEntitiesAdapter extends TypeAdapter<PokemonsEntities> {
  @override
  final int typeId = 1;

  @override
  PokemonsEntities read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonsEntities(
      name: fields[0] as String,
      url: fields[1] as String,
      image: fields[2] as String,
      abilities: (fields[3] as List).cast<AbilityEntity>(),
      gameIndices: (fields[6] as List).cast<GameIndexEntitie>(),
      types: (fields[4] as List).cast<TypeEntity>(),
      weight: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonsEntities obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.abilities)
      ..writeByte(4)
      ..write(obj.types)
      ..writeByte(5)
      ..write(obj.weight)
      ..writeByte(6)
      ..write(obj.gameIndices);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonsEntitiesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
