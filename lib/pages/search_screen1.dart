import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:registrar_page_turismapp/pages/app_layout.dart';
import '../utils/app_styles.dart';

class SearchScreen1 extends StatefulWidget {
  const SearchScreen1({Key? key}) : super(key: key);

  @override
  State<SearchScreen1> createState() => _SearchScreen1State();
}

class _SearchScreen1State extends State<SearchScreen1> {
  
  @override

  Widget build(BuildContext context) {
    final size = AppLayout.getSize(BuildContext);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(




          padding: const EdgeInsets.symmetric(horizontal: (25), vertical: (10)),
          children: [
            Gap((40)),
            Text(
              "Descubre Popayán",
              style: Styles.headLineStyle1.copyWith(fontSize: 30),
            ),
            Gap(20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF4F6FD)),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                children: [
                  const Icon(FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xFFBFC205)),
                  Text(
                    "Bucar",
                    style: Styles.headLineStyle4,
                  )
                ],
              ),
            ),
            Container(),
            const Gap(20),
            Container(

              padding: EdgeInsets.symmetric(vertical: (15), horizontal: (15)),
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                    "Lugares Recomendados",
                    style: Styles.headLineStyle1.copyWith(
                      color: Colors.white,
                    ),
                  )),
            ),
        Gap(15),

        Padding(
          padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance.collection(
                        "lugaresTuriticosPopayan").snapshots(),
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasData) {
                        final snap = snapshot.data!.docs;
                        return ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: snap.length,
                          itemBuilder: (context, index) {
                            return Card(

                                elevation: 10,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              height:  170,
                              width: 200,
                              margin: const EdgeInsets.only(bottom: 200),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(2, 2),
                                    blurRadius: 30,
                                  ),
                                ],
                              ),
                                padding: const EdgeInsets.all(1),

                                      child: Column(

                                        children:[
                                          Container(

                                              child: Padding(
                                                padding: const EdgeInsets.all(5),
                                                child: Image.network(
                                                  snap[index]['foto'],
                                                  fit: BoxFit.fill,

                                                ),
                                              ),
                                            ),
                                          Container(
                                            margin: const EdgeInsets.only(left: 20),
                                            alignment: Alignment.topLeft,
                                            child: Center(
                                              child: Text(
                                                snap[index]['nombre'],
                                                style: const TextStyle(
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),

                                          Column(
                                            //margin: const EdgeInsets.only(right: 20),
                                            //alignment: Alignment.center,
                                            children: [
                                              Gap(7),
                                              Text(
                                                snap[index]['info'],
                                                style: TextStyle(
                                                  color: Colors.green.withOpacity(0.7),
                                                  //fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),

                                      ]
                                      ),
                                    ),

                                


                            );
                          },
                        );

                      } else {
                        return const SizedBox();
                      }
                    }
                  ),
                ]
              ),
            ),


    ]
        ),
    );
 }
}
