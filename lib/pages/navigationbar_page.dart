
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:registrar_page_turismapp/pages/home_page.dart';


class navigationBar extends StatefulWidget {
  const navigationBar({Key? key}) : super(key: key);

  @override
 _navigationBarState createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  int _selectedIndex=0;
  static final List <Widget>_widgetOptions = <Widget>[
    HomePage(),
    const Text("Perfil"),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:   Center(
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
