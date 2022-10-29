
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registrar_page_turismapp/pages/registrar_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.purpleAccent[90],//para cambiar el color del fondo
      body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/colombia.png", height: 80, width:80 ,),
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
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.circular(18)
                      ),
                      focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(18)),
                      labelText: "Correo electrónico",
                      labelStyle: const TextStyle(color: Colors.indigo),
                    ),
                  ),

                ),
                const SizedBox(height: 10.0),

                // ESPACIO PARA LA CONTRSEÑA
                Padding(padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.circular(18)
                      ),
                      focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(18)),
                      labelText: "Contraseña",
                      labelStyle: const TextStyle(color: Colors.indigo),

                    ),
                  ),

                ),
                const SizedBox(height: 20.0),

                // BOTON DE INICIAR SESION
                ElevatedButton(onPressed: () {} ,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 16),
                  ), child: const Text("Iniciar Sesion"),
                ),

                // BOTON DE REGISTRARSE
                TextButton(onPressed: ()  {
                   Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => RegistrarPage()));
                }, child: const Text("Registrarse",
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 12,
                  ),

                ),
                ),

                //end

              ],
            ),
          )
      ),
    );
  }
}
