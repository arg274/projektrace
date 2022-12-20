class Constraint{
  String _code;

  String get code => _code;

  set code(String value) {
    _code = value;
  }

  int get maxLimit => _maxLimit;

  set maxLimit(int value) {
    _maxLimit = value;
  }

  String _type;
  int _maxLimit;

  String get type => _type;

  set type(String value) {
    _type = value;
  }

  Constraint(this._code,this._type,this._maxLimit);
}