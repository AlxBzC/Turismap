import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:registrar_page_turismapp/models/site.dart';

class PoiPage extends StatefulWidget {
  final datosSite sitio;

  PoiPage(this.sitio);

  @override
  State<PoiPage> createState() => _PoiPageState();
}

class _PoiPageState extends State<PoiPage> {
  double _rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.sitio.nombre),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  _rating = rating;
                },
              ),
              myCard(widget.sitio.foto, widget.sitio.historia),
            ],
          ),
        ));
  }
}

class myCard extends StatelessWidget {
  final String url;
  final String texto;

  myCard(this.url, this.texto);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(20),
      elevation: 20,
      color: Colors.lightBlue,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: [
            Image.network(
              url,
              width: MediaQuery.of(context).size.width,
              height: 25,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.all(15),
              color: Colors.lightBlue,
              child: Text(texto,
                  style: const TextStyle(fontSize: 15, color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
