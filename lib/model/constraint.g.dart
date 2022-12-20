// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constraint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Constraint _$ConstraintFromJson(Map<String, dynamic> json) => Constraint(
      json['code'] as String,
      json['type'] as String,
      json['maxLimit'] as int,
    );

Map<String, dynamic> _$ConstraintToJson(Constraint instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'maxLimit': instance.maxLimit,
    };
