import 'package:flutter/material.dart';



class DetalleSitios extends StatefulWidget {

  /*final datosSitio sitio;


  DetallePaseador(this.sitio);

  @override
  State<DetalleSitios> createState() => _DetalleSitiosState();
}

class _DetalleSitiosState extends State<DetalleSitios> {

  var favorito=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFavoritos();
  }
  void getFavoritos(){
    final box = Boxes.boxFavoritos();
    box.values.forEach((element) {
      if(element.id == widget.sitio.id){
        favorito=true;
      }
    });
  }


  void agregarFavoritos(){
    var paseadorFavorito = PaseadoresLocal()
      ..id = widget.sitio.id
      ..nombre= widget.sitio.nombre
      ..contacto = widget.sitio.contacto
      ..ciudad = widget.sitio.ciudad
      ..foto = widget.sitio.foto
      ..perfil = widget.sitio.perfil;
    final box = Boxes.boxFavoritos();
    //box.add(paseadorFavorito);
    if(favorito){
      box.delete(paseadorFavorito.id);
    }else{
      box.put(paseadorFavorito.id, paseadorFavorito);
    }
    setState(() {
      favorito=!favorito;
    });
  }


  @override
  Widget build(BuildContext context) {

    final posicion = CameraPosition(
        target: LatLng(widget.sitio.ubicacion.latitude, widget.paseador.ubicacion.longitude),
        zoom: 15
    );

    final Set<Marker> marcador = Set();

    setState(() {
      marcador.add(
          Marker(markerId: MarkerId(widget.sitio.id),
              position: LatLng(widget.sitio.ubicacion.latitude, widget.paseador.ubicacion.longitude),
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
              infoWindow: InfoWindow(
                  title: widget.sitio.nombre,
                  snippet: widget.sitio.contacto
              )
          )
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.sitio.nombre),
        actions: [
          IconButton(
              padding: const EdgeInsets.only(right: 30),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MapaPage(widget.sitio)));
              }, icon: const Icon(Icons.map, size: 30, color: Colors.red)),
          IconButton(
              padding: const EdgeInsets.only(right: 30),
              onPressed: (){
                agregarFavoritos();
              }, icon: Icon(favorito ? FontAwesomeIcons.heartCircleBolt : FontAwesomeIcons.heart, size: 30, color: Colors.red))
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
            children:[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                height: 500,
                child: GoogleMap(
                  initialCameraPosition: posicion,
                  scrollGesturesEnabled: true,
                  zoomGesturesEnabled: true,
                  zoomControlsEnabled: true,
                  mapType: MapType.normal,
                  markers: marcador,

                ),
              ),
              miCardImage(widget.sitio.foto, widget.sitio.nombre+"\n"+widget.sitio.contacto+"\n"+widget.sitio.ciudad+"\n\n"+widget.sitio.perfil),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) =>
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
            ]


        ),
      ),
    );
  }
}