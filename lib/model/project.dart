class Project
{

  String _name;

  set name(String value) {
    _name = value;
  }

  String get name => _name;
  String _location;

  set location(String value) {
    _location = value;
  }

  double _latitude;

  String get location => _location;
  double _longitude;
  String _execAgency;
  double _cost;
  double _timespan;
  String _projectId;
  String _goal;
  DateTime _startDate;
  double _completion;
  double _actualCost;
  Map<String, int> _ratings;

  Map<String, int> get ratings => _ratings;

  set ratings(Map<String, int> value) {
    _ratings = value;
  }

  Map<String, String> get comments => _comments;

  set comments(Map<String, String> value) {
    _comments = value;
  }

  Map<String, String> _comments;
  Project(this._name, this._location, this._latitude,
    this._longitude, this._execAgency, this._cost,
    this._timespan,this._projectId, this._goal,this._startDate,
    this._completion, this._actualCost, this._ratings, this._comments
  );

  set latitude(double value) {
    _latitude = value;
  }

  set longitude(double value) {
    _longitude = value;
  }

  set execAgency(String value) {
    _execAgency = value;
  }

  set cost(double value) {
    _cost = value;
  }

  set timespan(double value) {
    _timespan = value;
  }

  set projectId(String value) {
    _projectId = value;
  }

  set goal(String value) {
    _goal = value;
  }

  set startDate(DateTime value) {
    _startDate = value;
  }

  set completion(double value) {
    _completion = value;
  }

  set actualCost(double value) {
    _actualCost = value;
  }

  double get latitude => _latitude;

  double get longitude => _longitude;

  String get execAgency => _execAgency;

  double get cost => _cost;

  double get timespan => _timespan;

  String get projectId => _projectId;

  String get goal => _goal;

  DateTime get startDate => _startDate;

  double get completion => _completion;

  double get actualCost => _actualCost;
}