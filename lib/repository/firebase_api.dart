import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:registrar_page_turismapp/models/user.dart' as UsersApp;

import '../models/site.dart';

class FirebaseApi{

  Future<String?> registerUser(String email, String password) async {
    try{
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user?.uid;
  }   on FirebaseAuthException catch (e) {
      print("FirebaseAuthException ${e.code}");
      return e.code;
    } on FirebaseException catch (e) {
      print("FirebaseException ${e.code}");
      return e.code;
    }
 }

  Future<String?> logInUser(String email, String password) async {
    try{
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user?.uid;
    }   on FirebaseAuthException catch (e) {
      print("FirebaseAuthException ${e.code}");
      return e.code;
    } on FirebaseException catch (e) {
      print("FirebaseException ${e.code}");
      return e.code;
    }
  }

  Future<String> createUser(UsersApp.Users users) async {
    try {
        final document = await FirebaseFirestore.instance
            .collection("users").doc(users.uid).set(users.toJson());
        return users.uid;
      } on FirebaseException catch (e) {
        print("FirebaseException ${e.code}");
        return e.code;
      }
    }

  /*Future<String> createSite(Site site) async {
    try {
      final uid = FirebaseAuth.instance.currentUser?.uid;
      final document =  FirebaseFirestore.instance
          .collection("users").doc(uid).collection("site").doc();
      site.id = document.id;

      final result = FirebaseFirestore.instance.collection("users").doc(uid).collection("sites").doc(site.id).set(site.toJson());
      return site.id;
    } on FirebaseException catch (e) {
      print("FirebaseException ${e.code}");
      return e.code;
    }
  }*/

}