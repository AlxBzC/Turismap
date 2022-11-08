import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:registrar_page_turismapp/pages/login_page.dart';
import 'package:registrar_page_turismapp/pages/navigationbar_page.dart';

class RegistrarPage extends StatefulWidget {
  const RegistrarPage({Key? key}) : super(key: key);

  @override
  _RegistrarPageState createState() => _RegistrarPageState();
}

class _RegistrarPageState extends State<RegistrarPage> {

  TextEditingController nombres = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConf = TextEditingController();
  final firebase=FirebaseFirestore.instance;

  registroUsuario() async {
    try{
      await firebase.collection('Usuarios').doc().set(
        {
          "Nombre":nombres.text,
          "Correo":email.text,
          "Contraseña":password.text,
          "ConfirmarCon":passwordConf.text
        }
      );

      }catch (e){
      print('Error...'+e.toString());
    }
  }

 // String _data = "Información: ";

 /* void _onRegisterButtonClicked(){
    setState(() {
      _data = "Nombre: ${nombres.text} \n Correo Electrónico: ${email.text}";

    });
  }*/

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

                      TextFormField(
                        controller: nombres,
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
                      TextFormField(
                        controller: email,
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
                      TextFormField(
                        obscureText: true,
                        controller: password,
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
                      TextFormField(
                        obscureText: true,
                        controller: passwordConf,
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
                            print('Enviando...');
                            registroUsuario();
                            },
                          child: Text('Registrarse'),
                        ),
                      )
  //////////////////////////  Fin Boton  ////////////////////////////////

                    ])))),
      ),
    );
  }
}
