import 'package:flutter/material.dart';

class RegistrarPage extends StatefulWidget {
  const RegistrarPage({Key? key}) : super(key: key);

  @override
  _RegistrarPageState createState() => _RegistrarPageState();
}

enum Genero {Femenino,Masculino}

class _RegistrarPageState extends State<RegistrarPage> {

  final nombres=TextEditingController();
  final apellidos=TextEditingController();
  final telefono=TextEditingController();
  final direccion=TextEditingController();
  final email=TextEditingController();
  final password=TextEditingController();
  final passwordConf=TextEditingController();

  Genero? _genero= Genero.Femenino;


  String _data = "Información: ";

  void _onRegisterButtonClicked(){
    setState(() {
      _data = "Nombre: ${nombres.text} \n Correo Electrónico: ${email.text}";

    });
  }


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
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.black54,
                              fixedSize: const Size(200, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)),
                              textStyle: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20)),
                          onPressed:(){
                            _onRegisterButtonClicked(),

                          },
                          child: const Text("Registrarse")),
                      Text(
                          _data,
                      style: const TextStyle(
                        fontSize: 12, fontStyle: FontStyle.italic
                      ),)
                    ])))),
      ),
    );
  }
}