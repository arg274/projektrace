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

  String _constraintType;
  int _maxLimit;

  String get constraintType => _constraintType;

  set constraintType(String value) {
    _constraintType = value;
  }

  Constraint(this._code,this._constraintType,this._maxLimit);
}