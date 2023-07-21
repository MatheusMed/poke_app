// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_index_entitie.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GameIndexEntitieAdapter extends TypeAdapter<GameIndexEntitie> {
  @override
  final int typeId = 3;

  @override
  GameIndexEntitie read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GameIndexEntitie(
      gameIndex: fields[0] as int,
      version: fields[1] as SpeciesEntity,
    );
  }

  @override
  void write(BinaryWriter writer, GameIndexEntitie obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.gameIndex)
      ..writeByte(1)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameIndexEntitieAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
