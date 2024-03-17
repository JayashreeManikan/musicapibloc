// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classiclist.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class classiclistAdapter extends TypeAdapter<classiclist> {
  @override
  final int typeId = 0;

  @override
  classiclist read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return classiclist(
      trackname: fields[0] as String,
      country: fields[1] as String,
      artistname: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, classiclist obj) {
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
      other is classiclistAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
