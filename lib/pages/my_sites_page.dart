import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MySitesPage extends StatefulWidget {
  const MySitesPage({Key? key}) : super(key: key);

  @override
  State<MySitesPage> createState() => _MySitesPageState();
}

class _MySitesPageState extends State<MySitesPage> {

  double _rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Mis Sitios"),
      ),

      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: (15), horizontal: (15)),
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

                        return Container(
                          height: 70,
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 2),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  snap[index]['nombre'],
                                  style: const TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                             Container(
                                margin: const EdgeInsets.only(right: 20),
                                alignment: Alignment.center,
                                child: Text(
                                  snap[index]['info'],
                                  style: TextStyle(
                                    color: Colors.green.withOpacity(0.7),
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
                ),
                onRatingUpdate: (rating){
                  _rating = rating;
                },
              ),
            ],
          )
      ),
    );
  }
}