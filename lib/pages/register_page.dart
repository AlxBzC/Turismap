import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:registrar_page_turismapp/pages/login_page.dart';
import 'package:registrar_page_turismapp/models/user.dart';
import '../repository/firebase_api.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FirebaseApi _firebaseApi = FirebaseApi();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _passwordConf = TextEditingController();
  final firebase = FirebaseFirestore.instance;

  void _showMsg(String msg) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(msg),
        action: SnackBarAction(
            label: 'Aceptar', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  void _saveUser(Users users) async {
    var result = await _firebaseApi.createUser(users);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  void _registerUser(Users users) async {
    var result = await _firebaseApi.registerUser(users.email, users.password);
    String msg = "";
    if (result == "invalid-email") {
      msg = "Ingrese un correo valido";
    } else if (result == "internal-error") {
      msg = "Ingrese todos los datos";
    } else if (result == "weak-password") {
      msg = "El password debe contener minimo 6 digitos";
    } else if (result == "email-already-in-use") {
      msg = "El correo ya existe";
    } else if (result == "network-request-failed") {
      msg = "No tiene conexion a internet";
    } else {
      msg = "Usuario registrado con exito";
      users.uid = result;
      _saveUser(users);
    }
    _showMsg(msg);
  }

  void _onRegisterButtonClicked() {
    setState(() {
      if (_email.text.isEmpty || _password.text.isEmpty || _name.text.isEmpty) {
        _showMsg("Debe ingresar sus datos");
      } else if (_password.text == _passwordConf.text) {
        var user = Users("", _name.text, _email.text, _password.text);
        _registerUser(user);
      } else {
        _showMsg("Contraseña debe coincidir");
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
                      fontSize: 40, fontWeight: FontWeight.bold),
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
                  suffixIcon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(),
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
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              /////  Password   ////
              TextFormField(
                obscureText: true,
                controller: _password,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Contraseña",
                  suffixIcon: Icon(Icons.vpn_key_sharp),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //// Confirmar Password  ////
              TextFormField(
                obscureText: true,
                controller: _passwordConf,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Confirmar Contraseña",
                  suffixIcon: Icon(Icons.password),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //////////////////////////  Boton Registrarse  //////////////////////////
              ElevatedButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () {
                  _onRegisterButtonClicked();
                },
                child: const Text("Registrar"),
              )

              //////////////////////////  Fin Boton  ////////////////////////////////
            ])))),
      ),
    );
  }
}
