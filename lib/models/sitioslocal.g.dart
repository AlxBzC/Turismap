// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sitioslocal.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SitiosLocalAdapter extends TypeAdapter<SitiosLocal> {
  @override
  final int typeId = 0;

  @override
  SitiosLocal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SitiosLocal()
      ..id = fields[0] as String?
      ..foto = fields[1] as String?;





  }

  @override
  void write(BinaryWriter writer, SitiosLocal obj) {
    writer
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(0)
      ..write(obj.foto)
      ..writeByte(1)
      ..write(obj.nombre);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SitiosLocalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
