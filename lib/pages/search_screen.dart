import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:registrar_page_turismapp/pages/app_layout.dart';
import 'package:registrar_page_turismapp/sites/site_page1.dart';
import 'package:registrar_page_turismapp/sites/site_page2.dart';
import 'package:registrar_page_turismapp/sites/site_page3.dart';
import 'package:registrar_page_turismapp/sites/site_page4.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  
 /* void FavoritosLista(){
    var SitiosLocal = SitiosLocal();
    id??
      
    final box = Boxes.boxFavoritos();
    box.add(SitiosLocal);
  } */
  
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(BuildContext);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: (25), vertical: (10)),
          children: [
            Gap((40)),
            Text(
              "Descubre Popayán",
              style: Styles.headLineStyle1.copyWith(fontSize: 30),
            ),
            Gap(20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF4F6FD)),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                children: [
                  const Icon(FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xFFBFC205)),
                  Text(
                    "Bucar",
                    style: Styles.headLineStyle4,
                  )
                ],
              ),
            ),
            Container(),
            const Gap(20),
            Container(
              padding: EdgeInsets.symmetric(vertical: (15), horizontal: (15)),
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Lugares Recomendados",
                style: Styles.headLineStyle1.copyWith(
                  color: Colors.white,
                ),
              )),
            ),
            Gap(20),
            _crearCard1(),
            _crearCard2(),
            _crearCard3(),
            _crearCard4(),
            _crearCard5(),
          ],
        ));
  }

  Widget _crearCard1() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(children: <Widget>[
          const ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            child: FadeInImage(
              placeholder: AssetImage("assets/1.png"),
              image: NetworkImage(
                  "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/1c/cb/24/photo0jpg.jpg?w=1200&h=-1&s=1"),
            ),
          ),
          Text(
            "Puente del Humilladero",
            style: Styles.headLineStyle1,
          ),
          /* IconButton(
             alignment: Alignment.topRight,
             color: Colors.red
              onPressed: (){
                FavoritosLista();
              }, icon: Icon(FluentSystemIcons.(porelegir))
             ), */
          SizedBox(
            height: 1,
          ),
          TextButton(
            child: const Text("Mas informacion..."),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => sitePage1()));
            },
          ),
        ]),
      ),
    );
  }

  Widget _crearCard2() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            child: FadeInImage(
              placeholder: AssetImage("assets/1.png"),
              image: NetworkImage(
                  "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/1d/30/7a/parque-caldas.jpg?w=1200&h=-1&s=1"),
            ),
          ),
          Text(
            "Parque Caldas",
            style: Styles.headLineStyle1,
          ),
       /* IconButton(
             alignment: Alignment.topRight,
             color: Colors.red
              onPressed: (){
                FavoritosLista();
              }, icon: Icon(FluentSystemIcons.(porelegir))
             ), */
          SizedBox(
            height: 1,
          ),
          TextButton(
            child: const Text("Mas informacion..."),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => sitePage2()));
            },
          ),
        ]),
      ),
    );
  }

  Widget _crearCard3() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(children: <Widget>[
          const ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            child: FadeInImage(
              placeholder: AssetImage("assets/1.png"),
              image: NetworkImage(
                  "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/d5/c0/35/img-20190416-wa0029-largejpg.jpg?w=1100&h=-1&s=1"),
            ),
          ),
          Text(
            "Histórico de Popayán",
            style: Styles.headLineStyle1,
          ),
          const SizedBox(
            height: 1,
          ),
          TextButton(
            child: const Text("Mas informacion..."),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => sitePage3()));
            },
          ),
        ]),
      ),
    );
  }

  Widget _crearCard4() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(children: <Widget>[
          const ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            child: FadeInImage(
              placeholder: AssetImage("assets/1.png"),
              image: NetworkImage(
                  "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/47/8f/8e/vista-general-de-parque.jpg?w=1000&h=-1&s=1"),
            ),
          ),
          Text(
            "Torre del Reloj",
            style: Styles.headLineStyle1,
          ),
          const SizedBox(
            height: 1,
    ),
            TextButton(
              child: const Text("Mas informacion..."),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => sitePage4()));
              },
            ),
        ]),
      ),
    );
  }

  Widget _crearCard5() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(children: <Widget>[
          const ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            child: FadeInImage(
              placeholder: AssetImage("assets/1.png"),
              image: NetworkImage(
                  "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/d2/f4/13/kirche-san-francisco.jpg?w=1200&h=-1&s=1"),
            ),
          ),
          Text(
            "Iglesia de San Francisco",
            style: Styles.headLineStyle1,
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
