class Agency{
  String _id;

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String _code;

  String get code => _code;

  set code(String value) {
    _code = value;
  }

  String _name;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String _type;

  String get type => _type;

  set type(String value) {
    _type = value;
  }

  String _description;

  Agency(this._id,this._code,this._name,this._type,this._description);
}