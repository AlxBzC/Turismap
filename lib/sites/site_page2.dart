import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registrar_page_turismapp/maps/maps_site2.dart';
import 'package:registrar_page_turismapp/utils/app_styles.dart';
import 'package:gap/gap.dart';

class sitePage2 extends StatefulWidget {
  const sitePage2({Key? key}) : super(key: key);

  @override
  State<sitePage2> createState() => _sitePage2();
}

class _sitePage2 extends State<sitePage2> {
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
                          "Parque ",
                          style: Styles.headLineStyle,
                        ),
                        const Gap(1),
                        Text(
                          "Caldas",
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
                        image: AssetImage("assets/ParqueCaldasPopayan.jpg"),
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
                          text: "El Parque Caldas es la plaza principal de la ciudad de Popayán, Colombia. Se encuentra ubicado en el centro de la Ciudad, lugar donde convergen todos los edificios principales y representativos de la ciudad. Desde el año 2010 Con una inversión de más de 2.300 millones de pesos financiados por FONADE y con el aporte de 550 millones de la Alcaldía de Popayán, se entregaron las obras de ampliación, ornato y embellecimiento del área peatonal del parque.",
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
                    builder:(context)=> MyApp2(),
                  ));
                },
                ),
                TextButton(
                  child: const Text("Mas informacion..."),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sitePage2()));
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
