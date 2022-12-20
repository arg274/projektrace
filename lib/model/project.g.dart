// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      json['name'] as String,
      json['location'] as String,
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
      json['execAgency'] as String,
      (json['cost'] as num).toDouble(),
      (json['timespan'] as num).toDouble(),
      json['projectId'] as String,
      json['goal'] as String,
      DateTime.parse(json['startDate'] as String),
      (json['completion'] as num).toDouble(),
      (json['actualCost'] as num).toDouble(),
      Map<String, int>.from(json['ratings'] as Map),
      Map<String, String>.from(json['comments'] as Map),
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'execAgency': instance.execAgency,
      'cost': instance.cost,
      'timespan': instance.timespan,
      'projectId': instance.projectId,
      'goal': instance.goal,
      'startDate': instance.startDate.toIso8601String(),
      'completion': instance.completion,
      'actualCost': instance.actualCost,
      'ratings': instance.ratings,
      'comments': instance.comments,
    };
