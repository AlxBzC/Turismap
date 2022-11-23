import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registrar_page_turismapp/maps/maps_site3.dart';
import 'package:registrar_page_turismapp/utils/app_styles.dart';
import 'package:gap/gap.dart';

class sitePage3 extends StatefulWidget {
  const sitePage3({Key? key}) : super(key: key);

  @override
  State<sitePage3> createState() => _sitePage3();
}

class _sitePage3 extends State<sitePage3> {
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
                          "Centro Historico ",
                          style: Styles.headLineStyle,
                        ),
                        const Gap(1),
                        Text(
                          "  de Popayan",
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
                Container(
                  height: 250.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("assets/113.png"),
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
                          text: "El Centro Histórico de Popayán se encuentra en el centro-oriente de la Capital del Departamento del Cauca, Popayán, con una superficie aproximada de 236 manzanas, es uno de los centros históricos coloniales más grandes del país y América, lo que convierte a esta ciudad colombiana en una de las más antiguas y mejor conservadas del continente lo que se ve reflejado en su arquitectura y tradiciones religiosas, reconocida por su arquitectura colonial y el cuidado de las fachadas.",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),

                Gap(10),

                FloatingActionButton(
                  child: (
                      Icon(FluentSystemIcons.ic_fluent_map_filled)),

                  elevation: 50.0,
                  backgroundColor: Colors.indigo, onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder:(context)=> MyApp3(),
                  ));
                },
                ),
                TextButton(
                  child: const Text("Mas informacion..."),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sitePage3()));
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
