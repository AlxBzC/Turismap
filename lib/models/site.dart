class Site{
  var _id;
  var _nombre;
  var _historia;
  var _info;

  static const String collectionId = 'lugaresTuriticosPopayan';

  Site(this._id, this._nombre, this._historia, this._info);

  Map<String, dynamic> toJson() =>
      {
        'uid': _id,
        'name': _nombre,
        'email': _historia,
        'password': _info
      };

  Site.fromJason(Map<String, dynamic> json)
      : _id = json['id'],
        _nombre = json['nombre'],
        _historia = json['historia'],
        _info = json['info'];

  get id => _id;

  set id(value) {
    _id = value;
  }

  get nombre => _nombre;

  set nombre(value) {
    _nombre = value;
  }

  get historia => _historia;

  set historia(value) {
    _historia = value;
  }

  get info => _info;

  set info(value) {
    _info = value;
  }
}
