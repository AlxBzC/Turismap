import 'package:hive/hive.dart';
 
part 'sitioslocal.g.dart';

@HiveType(typeId: 0)
class SitiosLocal extends HiveObject {

 @HiveField(0)
 String? id;

 @HiveField(1)
 String? nombre;

 @HiveField(2)
 String? historia ;

 @HiveField(3)
 String? info ;
}
