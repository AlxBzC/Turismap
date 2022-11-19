
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:registrar_page_turismapp/utils/app_styles.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
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
                        image: AssetImage("assets/popayan.jpg"),
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
                                      text: "Popayán es una de las",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
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
                                      text:"Ciudades coloniales más ",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: "hermosas de",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
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
                                      text:"Colombia. Ubicada cerca",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: "del Volcán de",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
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
                                      text:"Puracé, cuya cima",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: "nevada se pude",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
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
                                      text:"apreciar desde la",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: "la ciudad, fue fundada",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
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
                                      text:"y se encuentra ubicada",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: "sobre una de las",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
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
                                      text:"del El Dorado.",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
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
                                      text:"Otra informacion de interes... ",style:Styles.headLineStyle1.copyWith(color: Styles.primaryColor),
                                    ),
                                  ]
                              )),
                        )

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
