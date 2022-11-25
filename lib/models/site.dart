<<<<<<< HEAD
class datosSite {
  String id = "";
  String nombre = "";
  String historia = "";
  String ciudad = "";
  String foto = "";
=======
class Site{
  var _id;
  var _foto;
  var _nombre;
  var _historia;
  var _info;
>>>>>>> b4d125119eab70ef4228a2a57f0e8a51e550c053

  static const String collectionId = 'lugaresTuriticosPopayan';

  datosSite(this.id, this.nombre, this.historia, this.ciudad, this.foto);

<<<<<<< HEAD
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'historia': historia,
        'ciudad': ciudad,
        'foto': foto
      };

  datosSite.fromJason(Map<String, dynamic> json)
      : id = json['id'],
        nombre = json['nombre'],
        historia = json['historia'],
        ciudad = json['ciudad'],
        foto = json['foto'];
=======
  Map<String, dynamic> toJson() =>
      {
        'uid': _id,
        'foto': _foto,
        'name': _nombre,
        'email': _historia,
        'password': _info
      };

  Site.fromJason(Map<String, dynamic> json)
      : _id = json['id'],
        _foto = json['foto'],
        _nombre = json['nombre'],
        _historia = json['historia'],
        _info = json['info'];

  get id => _id;

  set id(value) {
    _id = value;
  }
  get foto => _foto;

  set foto (value) {
    _foto = value;
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
>>>>>>> b4d125119eab70ef4228a2a57f0e8a51e550c053
}
