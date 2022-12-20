class Proposal{
  String _id;

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  double get latitude => _latitude;

  set latitude(double value) {
    _latitude = value;
  }

  String _name;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  double get cost => _cost;

  set cost(double value) {
    _cost = value;
  }

  double get longitude => _longitude;

  set longitude(double value) {
    _longitude = value;
  }

  String get location => _location;

  set location(String value) {
    _location = value;
  }

  String get execAgency => _execAgency;

  set execAgency(String value) {
    _execAgency = value;
  }

  String _location;
  double _latitude;
  double _longitude;
  String _execAgency;
  double _cost;
  double _timespan;

  double get timespan => _timespan;

  set timespan(double value) {
    _timespan = value;
  }

  String _goal;

  String get goal => _goal;

  set goal(String value) {
    _goal = value;
  }

  DateTime _proposalDate;

  DateTime get proposalDate => _proposalDate;

  set proposalDate(DateTime value) {
    _proposalDate = value;
  }

  String _status;

  String get status => _status;

  set status(String value) {
    _status = value;
  }

  Proposal(this._id, this._name, this._location, this._latitude, this._longitude,
      this._execAgency,this._timespan,this._goal,this._proposalDate,this._status);


}