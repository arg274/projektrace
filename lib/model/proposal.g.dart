// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Proposal _$ProposalFromJson(Map<String, dynamic> json) => Proposal(
      json['id'] as String,
      json['name'] as String,
      json['location'] as String,
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
      json['execAgency'] as String,
      (json['cost'] as num).toDouble(),
      (json['timespan'] as num).toDouble(),
      json['goal'] as String,
      DateTime.parse(json['date'] as String),
      json['status'] as String,
    );

Map<String, dynamic> _$ProposalToJson(Proposal instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'execAgency': instance.execAgency,
      'cost': instance.cost,
      'timespan': instance.timespan,
      'goal': instance.goal,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
    };
