// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AbilityEntityAdapter extends TypeAdapter<AbilityEntity> {
  @override
  final int typeId = 2;

  @override
  AbilityEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AbilityEntity(
      ability: fields[0] as SpeciesEntity,
      isHidden: fields[1] as bool,
      slot: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AbilityEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.ability)
      ..writeByte(1)
      ..write(obj.isHidden)
      ..writeByte(2)
      ..write(obj.slot);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbilityEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
