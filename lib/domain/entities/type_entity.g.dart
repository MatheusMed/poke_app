// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TypeEntityAdapter extends TypeAdapter<TypeEntity> {
  @override
  final int typeId = 5;

  @override
  TypeEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TypeEntity(
      slot: fields[0] as int,
      type: fields[1] as SpeciesEntity,
    );
  }

  @override
  void write(BinaryWriter writer, TypeEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.slot)
      ..writeByte(1)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
