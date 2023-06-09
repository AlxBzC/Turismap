import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:registrar_page_turismapp/pages/sitio_page.dart';
//import 'favoritos_page.dart';
import 'home_page.dart';
import 'login_page.dart';

class MenuPage extends StatefulWidget {

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final correo=FirebaseAuth.instance.currentUser?.email;

  void initState() {
    // TODO: implement initState
    super.initState();
    String? correo=FirebaseAuth.instance.currentUser?.email.toString();
    print("----------------------->>>>>>>>>>>>>>>< "+correo!);
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                  color: Colors.green
              ),
              child: Image.network('https://w7.pngwing.com/pngs/312/283/png-transparent-man-s-face-avatar-computer-icons-user-profile-business-user-avatar-blue-face-heroes-thumbnail.png')
          ),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.person_pin, size: 30, color: Colors.black,),
                title: Text((correo).toString(), style: TextStyle( fontSize: 16)),
                textColor: Colors.black,
              ),
              ListTile(
                leading: const Icon(FluentSystemIcons.ic_fluent_home_regular, size: 20, color: Colors.blue,),
                title: const Text("Mis Mascotas", style: TextStyle( fontSize: 20)),
                textColor: Colors.blue,
                onTap: (){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomePage()));
                },
              ),
             /* ListTile(
                leading: const Icon(FluentSystemIcons.ic_fluent_home_regular, size: 20, color: Colors.blue,),
                title: const Text("Registrar Mascota", style: TextStyle( fontSize: 20)),
                textColor: Colors.blue,
                onTap: (){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const RegistrarMascotaPage()));
                },
              ),*/
              ListTile(
                leading: const Icon(FluentSystemIcons.ic_fluent_home_regular, size: 20, color: Colors.blue,),
                title: const Text("Consultar Paseadores.", style: TextStyle( fontSize: 20)),
                textColor: Colors.blue,
                onTap: (){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SitioscPage()));
                },
              ),
              ListTile(
                leading: const Icon(FluentSystemIcons.ic_fluent_home_regular, size: 20, color: Colors.blue,),
                title: const Text("Mis Favoritos", style: TextStyle( fontSize: 20)),
                textColor: Colors.blue,
                onTap: (){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const FavoritosPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app, size: 20, color: Colors.blue,),
                title: const Text("Salir", style: TextStyle( fontSize: 20)),
                textColor: Colors.blue,
                onTap: (){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

class menuInferior extends StatelessWidget {
  const menuInferior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular,size: 30),
            label: "Mis Mascotas"
        ),
        BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular,size: 30),
            label: "Paseadores"),
        BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular,size: 30),
            label: "Favoritos")
      ],
      onTap: (indice){
        if(indice==0){
          Navigator.push(context, MaterialPageRoute(builder: (contetx)=> const HomePage()));
        }else if(indice==1){
          Navigator.push(context, MaterialPageRoute(builder: (contetx)=> const SitiosPage()));
        }else{
          Navigator.push(context, MaterialPageRoute(builder: (contetx)=> const FavoritosPage()));
        }
      },

    );
  }
}