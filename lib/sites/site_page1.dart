import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:registrar_page_turismapp/models/sitioslocal.dart';
import 'package:registrar_page_turismapp/repository/boxes.dart';
import 'package:registrar_page_turismapp/utils/app_styles.dart';
import 'package:gap/gap.dart';

class sitePage1 extends StatefulWidget {
  const sitePage1({Key? key}) : super(key: key);

  @override
  State<sitePage1> createState() => _sitePage1();
}

class _sitePage1 extends State<sitePage1> {
  void FavoritosLista() {
    var sitiosLocal = SitiosLocal()
      ..id = 'Puente'
      ..nombre = 'Humilladero';

    final box = Boxes.boxFavoritos();
    box.add(sitiosLocal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "El puente",
                          style: Styles.headLineStyle,
                        ),
                        const Gap(1),
                        Text(
                          "Del Humilladero",
                          style: Styles.headLineStyle,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("assets/1.png"),
                            scale: 20),
                      ),
                    ),
                  ],
                ),
                Gap(20),
                IconButton(
                    alignment: Alignment.topRight,
                    color: Colors.red,
                    onPressed: () {
                      FavoritosLista();
                    },
                    icon: Icon(Icons.description)),
                Container(
                  height: 250.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("assets/112.png"),
                      )),
                ),
                Gap(20),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Ciudad: ",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "Popayan",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),
                Gap(10),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Departamento: ",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "Cauca",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),
                Gap(10),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Temperatura: ",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "24 °C",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),
                Gap(10),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Column(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Descripcion: ",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text:
                              "Popayán,2​ oficialmente Asunción de Popayán, es un municipio colombiano, capital del departamento del Cauca. Se encuentra localizado en el Valle de Pubenza, entre la Cordillera Occidental y Central al suroccidente del país. Su extensión territorial es de 512 km², su altitud media es de 1760 m sobre el nivel del mar, su precipitación media anual de 1941 mm, su temperatura promedio de 14/19 °C y distancia aproximada de 600 km a Bogotá, capital de Colombia.",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),
                Gap(10),
                TextButton(
                  child: const Text("Mas informacion..."),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sitePage1()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
