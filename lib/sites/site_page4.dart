import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registrar_page_turismapp/utils/app_styles.dart';
import 'package:gap/gap.dart';

class sitePage4 extends StatefulWidget {
  const sitePage4({Key? key}) : super(key: key);

  @override
  State<sitePage4> createState() => _sitePage4();
}

class _sitePage4 extends State<sitePage4> {
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
                          "Turismo por",
                          style: Styles.headLineStyle6,
                        ),
                        const Gap(1),
                        Text(
                          "Colombia",
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
                        image: AssetImage("assets/110.png"),
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
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Descripcion: ",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "Llamada ‘la nariz de",
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
                          text: "Popayán’, la Torre del Reloj",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "se levanta",
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
                          text: "en la esquina suroccidental",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "del Parque",
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
                          text: "Caldas. Fue construida ",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "entre 1673 y ",
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
                          text: "1682 y el reloj de un solo",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "puntero fue ",
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
                          text: "fue donado por los sacerdotes ",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "de la",
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
                          text: "ciudad en 1737.",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        ),
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
                          text: "Otra informacion de interes... ",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.primaryColor),
                        ),
                      ])),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
