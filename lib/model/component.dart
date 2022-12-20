import 'package:json_annotation/json_annotation.dart';

part 'component.g.dart';

@JsonSerializable()
class Component{
  @JsonKey(name: "id")
  String id;

  @JsonKey(name: "pid")
  String pid;

  @JsonKey(name: "type")
  String type;

  @JsonKey(name: "dependency")
  List<Component> dependency;

  @JsonKey(name: "budgetRatio")
  double budgetRatio;

  Component(this.id,this.pid,this.type,this.dependency,this.budgetRatio);

  factory Component.fromJson(Map<String, dynamic> json) => _$ComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ComponentToJson(this);
}