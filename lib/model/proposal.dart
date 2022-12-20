import 'package:json_annotation/json_annotation.dart';

part 'proposal.g.dart';
@JsonSerializable()
class Proposal{
  @JsonKey(name: "id")
  String id;
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
  @JsonKey(name: "goal")
  String goal;
  @JsonKey(name: "date")
  DateTime date;
  @JsonKey(name: "status")
  String status;

  Proposal(this.id, this.name, this.location, this.latitude, this.longitude, this.execAgency, this.cost, this.timespan, this.goal, this.date, this.status);

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory Proposal.fromJson(Map<String, dynamic> json) => _$ProposalFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ProposalToJson(this);
}