// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Component _$ComponentFromJson(Map<String, dynamic> json) => Component(
      json['id'] as String,
      json['pid'] as String,
      json['type'] as String,
      (json['dependency'] as List<dynamic>)
          .map((e) => Component.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['budgetRatio'] as num).toDouble(),
    );

Map<String, dynamic> _$ComponentToJson(Component instance) => <String, dynamic>{
      'id': instance.id,
      'pid': instance.pid,
      'type': instance.type,
      'dependency': instance.dependency,
      'budgetRatio': instance.budgetRatio,
    };
