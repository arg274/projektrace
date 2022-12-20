class Component{
  String _id;

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get pid => _pid;

  set pid(String value) {
    _pid = value;
  }

  String _pid;
  String _type;

  String get type => _type;

  set type(String value) {
    _type = value;
  }

  List<Component> _dependency;

  double get budgetRatio => _budgetRatio;

  set budgetRatio(double value) {
    _budgetRatio = value;
  }

  double _budgetRatio;

  List<Component> get dependency => _dependency;

  set dependency(List<Component> value) {
    _dependency = value;
  }

  Component(this._id,this._pid,this._type,this._dependency,this._budgetRatio);

}