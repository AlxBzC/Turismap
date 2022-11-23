import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:registrar_page_turismapp/pages/home_page.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:registrar_page_turismapp/pages/login_page.dart';
import 'package:registrar_page_turismapp/pages/menu_page.dart';
import 'package:registrar_page_turismapp/pages/search_screen.dart';


class navigationBar extends StatefulWidget {
  const navigationBar({Key? key}) : super(key: key);

  @override
  _navigationBarState createState() => _navigationBarState();
}

enum Menu { logOut }

class _navigationBarState extends State<navigationBar> {
  int _selectedIndex = 1;
  static final List <Widget>_widgetOptions = <Widget>[
    HomePage(),
    SearchScreen(),
    MenuPage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: const Text("Turismapp"),
          actions: [
            PopupMenuButton(
              onSelected: (Menu item) {
                setState(() {
                  if (item == Menu.logOut) {
                    FirebaseAuth.instance.signOut();
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => const LoginPage()));
                  }
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
              const PopupMenuItem(
                value: Menu.logOut, child: Text("Cerrar sesión"),
            ),

          ]
      ),
      ],
    ),
    body: Center(
    child: _widgetOptions[_selectedIndex],
    ),

    bottomNavigationBar: BottomNavigationBar(
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
    elevation: 10,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    selectedItemColor: Colors.indigoAccent,
    type: BottomNavigationBarType.fixed ,
    unselectedItemColor: const Color (0xFF5264480),
    items: const [
    BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),label: "Inicio"),
    BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),label: "Buscar"),
    BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),label: "Perfil"),
    ],
    ),
    );
  }
}
