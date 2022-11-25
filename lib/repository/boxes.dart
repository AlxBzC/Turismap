import 'package:hive/hive.dart';
import 'package:registrar_page_turismapp/models/sitioslocal.dart';

class Boxes{

  static Box<SitiosLocal> boxFavoritos() => Hive.box<SitiosLocal>('favoritos');
}
