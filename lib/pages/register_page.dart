import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:registrar_page_turismapp/pages/login_page.dart';
import 'package:registrar_page_turismapp/models/user.dart';
import '../repository/firebase_api.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final FirebaseApi _firebaseApi = FirebaseApi();
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _passwordConf = TextEditingController();
  final firebase=FirebaseFirestore.instance;

  void _showMsg(String msg){
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
        SnackBar(content: Text(msg),
        action: SnackBarAction(
          label: 'Aceptar', onPressed: scaffold.hideCurrentSnackBar),
        ),
    );
  }

  void _saveUser(Users users) async {
    var result = await _firebaseApi.createUser(users);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void registerUser(Users users) async {
    //SharedPreferences prefs = await SharedPreferences.getInstance();
    //prefs.setString("user", jsonEncode(user));
    var result = await _firebaseApi.registerUser(users.email, users.password);
    String msg = "";
    if (result == "invalid-email"){msg = "Ingrese un correo valido";} else
    if (result == "weak-password"){msg = "El password debe contener minimo 6 digitos";} else
    if (result == "email-already-in-use"){msg = "El correo ya existe";} else
    if (result == "network-request-failed"){msg = "No tiene conexion a internet";} else {
      msg = "Usuario registrado con exito";
      users.uid = result;
      _saveUser(users);
    }
    _showMsg(msg);

  }

    void _onRegisterButtonClicked(){
    setState(() {
      if(_password.text == _passwordConf.text) {
        var user = Users("",
            _name.text, _email.text, _password.text);
        registerUser(user);
      } else {
        _showMsg("Las contraseñas deben ser iguales");
      }
    });

  }

  /////////////////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
            child: SingleChildScrollView(
                child: Center(
                    child: Column(children: [
                      Container(
                        child: const Image(
                            image: AssetImage("assets/colombia_bandera.png"),
                            width: 80,
                            height: 80),
                        padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        margin: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          border: Border.all(color: Colors.black54, width: 2),
                        ),
                      ),
                      Text(
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                          "Regístrate"),

                      const SizedBox(
                        height: 20,
                      ),


                      ////  Nombre  /////
                      TextFormField(
                        controller: _name,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                            labelText: "Nombre completo",
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.person, color: Colors.white,)
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),


                      ////  Email    /////
                      TextFormField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            labelText: "Correo Electrónico",
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.email_outlined, color: Colors.white,)
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),


                      /////  Password   ////
                      TextFormField(
                        obscureText: true,
                        controller: _password,
                        //keyboardType: TextInputType.emailAddress,
                        //maxLength: 8,
                        decoration: const InputDecoration(
                            labelText: "Contraseña",
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.vpn_key_sharp, color: Colors.white,)
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      //// Confirmar Password  ////
                      TextFormField(
                        obscureText: true,
                        controller: _passwordConf,
                        //keyboardType: TextInputType.emailAddress,
                        //maxLength: 8,
                        decoration: const InputDecoration(
                            labelText: "Confirmar Contraseña",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.vpn_key_sharp, color: Colors.white,)
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      //////////////////////////  Boton Registrarse  //////////////////////////
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: ElevatedButton(
                          onPressed: () {
                            _onRegisterButtonClicked();
                            print('Enviando...');
                            // registroUsuario();
                          },
                          child: const Text('Registrarse'),
                        ),
                      )
                      //////////////////////////  Fin Boton  ////////////////////////////////

                    ])))),
      ),
    );
  }
}
