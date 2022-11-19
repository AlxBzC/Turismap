import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'menu_page.dart';

class SitiosPage extends StatefulWidget {
  const SitiosPage({Key? key}) : super(key: key);

  @override
  State<SitiosPage> createState() => _SitiosPageState();
}

class _SitiosPageState extends State<SitiosPage> {

  List sitios=[];
  List<dynamic> idDoc=[];
  final buscar=TextEditingController();

  @override
  void initState() {
    super.initState();
    String? correo=FirebaseAuth.instance.currentUser?.email.toString();
    print("----------------------->>>>>>>>>>>>>>>< "+correo!);
    getPaseadores();
  }



  Future getPaseadores() async{

    String id="";
    QuerySnapshot paseador= await FirebaseFirestore.instance.collection("Paseadores").get();
    setState(() {
      if(paseador.docs.isNotEmpty){
        for(var pas in paseador.docs){
          id=pas.id; //Trae el id
          idDoc.add(id);
          sitios.add(pas.data());
          print("------------------------>>>>>>>>>>>>>>>>>>><<< ID "+id);
          print("------------------------>>>>>>>>>>>>>>>>>>><<< "+pas.data().toString());
        }
      }
    });
  }

  Future getCiudad() async{

    idDoc.clear();
    sitios.clear();
    String id="";
    QuerySnapshot paseoCiudad= await FirebaseFirestore.instance.collection("Paseadores").where("ciudad", isEqualTo: buscar.text).get();
    setState(() {
      if(paseoCiudad.docs.isNotEmpty){
        for(var pas in paseoCiudad.docs){
          id=pas.id; //Trae el id
          idDoc.add(id);
          sitios.add(pas.data());
          print("------------------------>>>>>>>>>>>>>>>>>>><<< ID "+id);
          print("------------------------>>>>>>>>>>>>>>>>>>><<< "+pas.data().toString());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paseadores"),
      ),
      drawer: MenuPage(),
      body:Stack(
        children: [
          Row(
              children: [
                Expanded(
                    child: Container(
                      padding:
                      EdgeInsets.only(top: 20, left: 50, right: 0),
                      child: TextFormField(
                        controller: buscar,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          labelText: "Ciudad",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    )

                ),
                IconButton(
                    onPressed: (){
                      setState(() {
                        getCiudad();
                      });
                    },
                    padding: EdgeInsets.only(right: 50, left: 10),
                    icon: const Icon(Icons.search, size: 50, color: Colors.white))
              ]
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              child: ListView.builder(
                  padding: EdgeInsets.all(30),
                  itemCount: sitios.length,
                  itemBuilder: (BuildContext context, i){
                    return Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(sitios[i]['foto'], ),
                              radius: 50,
                            )
                        ),
                        /*Expanded(
                          child: ListTile(
                            title: Text(sitios[i]["nombre"], style: const TextStyle(fontSize: 20, color: Colors.black, )),
                            subtitle: Text(paseadores[i]["ciudad"]),
                            onTap: (){
                              datosSitios paseadorNew= datosSitio(idDoc[i], paseadores[i]["nombre"], paseadores[i]["ciudad"], paseadores[i]["contacto"], paseadores[i]["foto"], paseadores[i]["perfil"], paseadores[i]["ubicacion"]);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetalleSitios(sitioNew)));
                            },
                          ),
                        ),*/
                      ],
                    );
                  }
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const menuInferior(),
    );
  }
}