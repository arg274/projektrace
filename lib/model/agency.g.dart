// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Agency _$AgencyFromJson(Map<String, dynamic> json) => Agency(
      json['id'] as String,
      json['code'] as String,
      json['name'] as String,
      json['type'] as String,
      json['description'] as String,
    );

Map<String, dynamic> _$AgencyToJson(Agency instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
    };
