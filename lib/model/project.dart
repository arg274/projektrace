class Project
{

  String name;

  String location;
  double latitude;
  double longitude;
  String exec;
  double cost;
  double timespan;
  String projectId;
  String goal;
  DateTime startDate;
  double completion;
  double actualCost;

  Project({required this.name, required this.location, required this.latitude,
    required this.longitude, required this.exec, required this.cost, required
    this.timespan, required this.projectId, required this.goal, required this.startDate,
    required this.completion, required this.actualCost
  });

}