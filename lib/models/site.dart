class datosSite {
  String id = "";
  String nombre = "";
  String historia = "";
  String ciudad = "";
  String foto = "";

  static const String collectionId = 'lugaresTuriticosPopayan';

  datosSite(this.id, this.nombre, this.historia, this.ciudad, this.foto);

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
}
