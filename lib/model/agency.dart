import 'package:json_annotation/json_annotation.dart';

part 'agency.g.dart';

@JsonSerializable()
class Agency{
  @JsonKey(name: "id")
  String id;

  @JsonKey(name: "code")
  String code;

  @JsonKey(name: "name")
  String name;

  @JsonKey(name: "type")
  String type;

  @JsonKey(name: "description")
  String description;

  Agency(this.id, this.code, this.name, this.type, this.description);

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory Agency.fromJson(Map<String, dynamic> json) => _$AgencyFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AgencyToJson(this);
}