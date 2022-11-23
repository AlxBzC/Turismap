import 'package:flutter/material.dart';
import 'package:registrar_page_turismapp/models/user.dart';
import 'package:registrar_page_turismapp/pages/register_page.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../repository/firebase_api.dart';
import 'my_sites_page.dart';

class LoginPage extends StatefulWidget {
  @override
  const LoginPage({Key? key}) : super(key: key);

  @override
 State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  Users userLoad = Users.Empty();

  bool passVisible = true; // Contraseña visible

  final FirebaseApi _firebaseApi = FirebaseApi();

  @override
  void initState(){
    //_getUser();
    super.initState();
  }
  ////////////// Autenticación ///////////////
  _getUser() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  Map<String, dynamic> userMap = jsonDecode(prefs.getString("users")!);
  userLoad = Users.fromJason(userMap);
  }

  void _showMsg(String mns){
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
        SnackBar(content: Text(mns),
          action: SnackBarAction(
              label: 'Aceptar', onPressed: scaffold.hideCurrentSnackBar),
        ),
    );
  }
  void _validateUser() async {
    if (_email.text.isEmpty || _password.text.isEmpty) {
      _showMsg("Debe ingresar correo y contraseña");
    } else {
      var result = await _firebaseApi.logInUser(_email.text, _password.text);
      String msg = "";
      if (result == "user-not-found") {msg = "Usuario no registrado";} else
      if (result == "invalid-email") {msg = "Correo no valido";} else
      if (result == "wrong-password") {msg = "Contraseña incorrecta";} else {
        msg = "Bienvenido";
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MySitesPage()));
      }
      _showMsg(msg);
    }
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.purpleAccent[90],
      body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/colombia_bandera.png", height: 80, width:80 ,),
                const Text("Bienvenido a ",
                  style: TextStyle(
                    fontSize: 25,),
                ),
                const Text("Turismapp",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),

                const SizedBox(height: 35.0),

                //ESPACIO PARA EL CORREO
                Padding(padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  child: TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.circular(18)
                      ),
                      focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(18)),
                      labelText: "Correo electrónico",
                      suffixIcon: Icon(Icons.email),
                      labelStyle: const TextStyle(color: Colors.indigo),
                    ),
                  ),

                ),
                const SizedBox(height: 10.0),

                // ESPACIO PARA LA CONTRSEÑA
                Padding(padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  child: TextFormField(
                    controller: _password,
                    obscureText: passVisible,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.circular(18)
                      ),
                      focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(18)),
                      labelText: "Contraseña",
                      labelStyle: const TextStyle(color: Colors.indigo),

                      //////// contraseña visible  ///////////////////
                      suffixIcon: IconButton(
                        icon: Icon(
                            passVisible
                          ? Icons.visibility
                                : Icons.visibility_off
                              //color: Theme.of(context).primaryColorDark,
                        ),
                      onPressed: (){
                          setState(() {
                            passVisible = !passVisible;
                          });
                      },
                      )

                    ),
                  ),

                ),
                const SizedBox(
                    height: 20.0),

                // BOTON DE INICIAR SESION
                ElevatedButton(
                  onPressed: () {
                   _validateUser();
                    } , child: const Text("Iniciar Sesion")),

                // BOTON DE REGISTRARSE
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontSize: 12)),
                 onPressed: ()  {
                  Navigator.push(
                   context,
                   MaterialPageRoute(
                    builder: (context) => const RegisterPage()));
                },
                  child: const Text("Registrarse"),
                ),
                //),

                //end

              ],
            ),
          )
      ),
    );
  }
}