import 'package:json_annotation/json_annotation.dart';

part 'constraint.g.dart';

@JsonSerializable()
class Constraint{
  @JsonKey(name: "code")
  String code;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "maxLimit")
  int maxLimit;

  Constraint(this.code,this.type,this.maxLimit);

  factory Constraint.fromJson(Map<String, dynamic> json) => _$ConstraintFromJson(json);

  Map<String, dynamic> toJson() => _$ConstraintToJson(this);
}