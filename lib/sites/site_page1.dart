import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registrar_page_turismapp/utils/app_styles.dart';
import 'package:gap/gap.dart';

class sitePage1 extends StatefulWidget {
  const sitePage1({Key? key}) : super(key: key);

  @override
  State<sitePage1> createState() => _sitePage1();
}

class _sitePage1 extends State<sitePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20) ,
            child: Column(
              children: [
                const Gap (40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Turismo por", style: Styles.headLineStyle6,
                        ),
                        const Gap(1),
                        Text(
                          "Colombia", style: Styles.headLineStyle,
                        ),
                      ],

                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                                "assets/1.png"
                            ),scale: 20
                        ),
                      ),
                    ),

                  ],
                ),
                Gap(20),
                Container(
                  height: 250.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(25),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("assets/112.png"),
                      )
                  ),
                ),
                Gap(20),

                Container(
                  //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child:Row(
                      children: [
                        Center(
                          child: Text.rich(
                              TextSpan(
                                  children: [
                                    TextSpan(
                                      text:"Ciudad: ",style:Styles.headLineStyle1.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: "Popayan",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    )
                                  ]
                              )),
                        )
                      ],
                    )
                ),
                Gap(10),
                Container(
                  //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child:Row(
                      children: [
                        Center(
                          child: Text.rich(
                              TextSpan(
                                  children: [
                                    TextSpan(
                                      text:"Departamento: ",style:Styles.headLineStyle1.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: "Cauca",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    )
                                  ]
                              )),
                        )

                      ],
                    )
                ),
                Gap(10),
                Container(
                  //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child:Row(
                      children: [
                        Center(
                          child: Text.rich(
                              TextSpan(
                                  children: [
                                    TextSpan(
                                      text:"Temperatura: ",style:Styles.headLineStyle1.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: "24 °C",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    )
                                  ]
                              )),
                        )

                      ],
                    )
                ),
                Gap(10),
                Container(
                  //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child:Row(
                      children: [
                        Center(
                          child: Text.rich(
                              TextSpan(
                                  children: [
                                    TextSpan(
                                      text:"Descripcion: ",style:Styles.headLineStyle1.copyWith(color: Styles.primaryColor),
                                    ),

                                    TextSpan(
                                      text: "El puente del humilladero ",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    )
                                  ]
                              )),
                        )

                      ],
                    )
                ),
                Container(
                  //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child:Row(
                      children: [
                        Center(
                          child: Text.rich(
                              TextSpan(
                                  children: [
                                    TextSpan(
                                      text:"lo denominan así, según  ",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: "nos contaron",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    )

                                  ]
                              )),
                        )

                      ],
                    )
                ),
                Container(
                  //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child:Row(
                      children: [
                        Center(
                          child: Text.rich(
                              TextSpan(
                                  children: [
                                    TextSpan(
                                      text:"personas de Popayan,",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: "era por que antes",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    )

                                  ]
                              )),
                        )

                      ],
                    )
                ),
                Container(
                  //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child:Row(
                      children: [
                        Center(
                          child: Text.rich(
                              TextSpan(
                                  children: [
                                    TextSpan(
                                      text:"el puente a las personas",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: "les tocaba",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    )

                                  ]
                              )),
                        )

                      ],
                    )
                ),
                Container(
                  //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child:Row(
                      children: [
                        Center(
                          child: Text.rich(
                              TextSpan(
                                  children: [
                                    TextSpan(
                                      text:"inclinarse para subir la",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: " empinada ",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    )

                                  ]
                              )),
                        )

                      ],
                    )
                ),
                Container(
                  //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child:Row(
                      children: [
                        Center(
                          child: Text.rich(
                              TextSpan(
                                  children: [
                                    TextSpan(
                                      text:"cuesta, por esta",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: "razón se denomina así.",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    )

                                  ]
                              )),
                        )

                      ],
                    )
                ),
                Container(
                  //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child:Row(
                      children: [
                        Center(
                          child: Text.rich(
                              TextSpan(
                                  children: [
                                    TextSpan(
                                      text:"Los visitamos en la tarde y no tuvi...",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    ),
                                  ]
                              )),
                        )

                      ],
                    )
                ),

                Gap(10),
                Container(
                  //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child:Row(
                      children: [
                        Center(
                          child: Text.rich(
                              TextSpan(
                                  children: [
                                    TextSpan(
                                      text:"Otra informacion de interes del sitio... ",style:Styles.headLineStyle1.copyWith(color: Styles.primaryColor),
                                    ),
                                  ]
                              )),
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
