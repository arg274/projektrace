import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';
@JsonSerializable()
class Project
{
  @JsonKey(name: "name")
  String name;

  @JsonKey(name: "location")
  String location;

  @JsonKey(name: "latitude")
  double latitude;

  @JsonKey(name: "longitude")
  double longitude;

  @JsonKey(name: "execAgency")
  String execAgency;

  @JsonKey(name: "cost")
  double cost;

  @JsonKey(name: "timespan")
  double timespan;

  @JsonKey(name: "projectId")
  String projectId;

  @JsonKey(name: "goal")
  String goal;

  @JsonKey(name: "startDate")
  DateTime startDate;

  @JsonKey(name: "completion")
  double completion;

  @JsonKey(name: "actualCost")
  double actualCost;

  @JsonKey(name: "ratings")
  Map<String, int> ratings;

  @JsonKey(name: "comments")
  Map<String, String> comments;

  Project(this.name, this.location, this.latitude,
    this.longitude, this.execAgency, this.cost,
    this.timespan,this.projectId, this.goal,this.startDate,
    this.completion, this.actualCost, this.ratings, this.comments
  );

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}