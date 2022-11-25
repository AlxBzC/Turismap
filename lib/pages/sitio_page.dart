import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:registrar_page_turismapp/models/site.dart';
import 'package:registrar_page_turismapp/pages/poi.dart';

class SitiosPage extends StatefulWidget {
  const SitiosPage({Key? key}) : super(key: key);

  @override
  State<SitiosPage> createState() => _SitiosPageState();
}

class _SitiosPageState extends State<SitiosPage> {
  List sitios = [];
  List<dynamic> idDoc = [];

  @override
  void initState() {
    // Todo: implement instate
    super.initState();
    getSitios();
  }

  Future getSitios() async {
    String id = "";
    QuerySnapshot sitio = await FirebaseFirestore.instance
        .collection("lugaresTuriticosPopayan")
        .get();
    setState(() {
      if (sitio.docs.isNotEmpty) {
        for (var sit in sitio.docs) {
          id = sit.id;
          idDoc.add(id);
          sitios.add(sit.data());

        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sitios Popayan"),
        ),
        // drawer: MenuPage(),
        body: Stack(children: [

          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                  child: ListView.builder(
                      padding: EdgeInsets.all(30),
                      itemCount: sitios.length,
                      itemBuilder: (BuildContext context, i) {
                        return Row(children: [
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  sitios[i]['foto'],
                                ),
                                radius: 50,
                              )),
                          Expanded(
                            child: ListTile(
                              title: Text(sitios[i]["nombre"],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  )),
                              subtitle: Text(sitios[i]["info"],
                              textAlign: TextAlign.justify,),
                              onTap: () {
                                datosSite sitioNew = datosSite(
                                    idDoc[i],
                                    sitios[i]["nombre"],
                                    sitios[i]["historia"],
                                    sitios[i]["foto"],
                                    sitios[i]["ciudad"]);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PoiPage(sitioNew)));
                              },
                            ),
                          ),
                        ]);
                      })))
        ]));
  }
}
