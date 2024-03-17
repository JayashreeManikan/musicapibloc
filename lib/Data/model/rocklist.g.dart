// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocklist.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class rocklistAdapter extends TypeAdapter<rocklist> {
  @override
  final int typeId = 2;

  @override
  rocklist read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return rocklist(
      trackname: fields[0] as String,
      country: fields[1] as String,
      artistname: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, rocklist obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.trackname)
      ..writeByte(1)
      ..write(obj.country)
      ..writeByte(2)
      ..write(obj.artistname);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is rocklistAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
