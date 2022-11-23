import 'package:flutter/cupertino.dart';


class FavoritosPage extends StatefulWidget {
  const FavoritosPage({Key? key}) : super(key: key);

  @override
  State<FavoritosPage> createState() => _FavoritosPageState();
}

class _FavoritosPageState extends State<FavoritosPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  
  
  /*Widget Favoritos(){

    return ValueListenableBuilder<Box<SitiosLocal>>(
        valueListenable: Boxes.boxFavoritos().listenable(),
        builder: (context, box, _)
	{final lista = box.values.toList().cast<SitiosLocal>();
          return ListView.builder()}
	)*/
}