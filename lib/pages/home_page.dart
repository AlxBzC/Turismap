
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
                    child:Column(
                      children: [
                        Center(
                          child: Text.rich(
                              TextSpan(
                                  children: [
                                    TextSpan(
                                      text:"Descripcion: ",style:Styles.headLineStyle1.copyWith(color: Styles.primaryColor),
                                    ),
                                    TextSpan(
                                      text: "Popayán, oficialmente Asunción de Popayán, es un municipio colombiano capital del departamento del Cauca. Se encuentra localizado en el Valle de Pubenza, entre la Cordillera Occidental y Central al suroccidente del país.",style:Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                                    )
                                  ]
                              )),
                        )

                      ],
                    )
                ),

                Gap(10),
                TextButton(
                  child: const Text("Mas informacion..."),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
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
