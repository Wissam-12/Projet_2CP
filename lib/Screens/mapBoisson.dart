import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projet/Screens/mapFecul.dart';

import '../gestionSon.dart';

class mapBoisson extends StatefulWidget {
  mapBoisson({Key? key}) : super(key: key);

  @override
  State<mapBoisson> createState() => _mapBoissonState();
}

class _mapBoissonState extends State<mapBoisson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff40bcc8),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottomOpacity: 0,

            //Color(0xFFEBFFDB),
            automaticallyImplyLeading: false,
            toolbarHeight: 100,
            actions: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800.withOpacity(0.1)),
                ),
              ),
              Row(
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      radius: 28,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 36,
                            ),
                            onPressed: () {
                              gestionSfx();
                            }),
                      ),
                      backgroundColor: Color(0xffFFA450),
                    ),
                  ),
                  Container(
                      width: 120,
                      height: 57,
                      decoration: BoxDecoration(
                        color: Color(0xffFFA450),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: EdgeInsets.only(
                        right: 20,
                        left: 20,
                      ),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 6),
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Color(0xFFFFF27D),
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Color(0xFFFFF27D),
                                  backgroundImage: AssetImage("images/pom.png"),
                                ),
                              )),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              '124',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'Rubik-ExtraBold'),
                            ),
                          )
                        ],
                      )),
                  CircleAvatar(
                    radius: 28,
                    child: Container(
                      child: IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 32,
                          ),
                          onPressed: () {
                            gestionSfx();
                            showDialogFunc(context);
                          }),
                    ),
                    backgroundColor: Color(0xffFFA450),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    child: MaterialButton(
                      onPressed: () {
                        gestionSfx();
                      },
                      height: 70,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Color(0xffFFA450),
                        child: CircleAvatar(
                          radius: 21,
                          backgroundColor: Color(0xFFFFF27D),
                          backgroundImage: AssetImage("images/bag.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
        //--------------------------- FIN  APP BAR------------------------------

        body: Stack(children: [
          Container(
            child: ListView(reverse: true, children: [
              Stack(
                children: [
                  Image.asset("images/F4.png"),

                  Container(
                    margin: EdgeInsets.only(left: 121, top: 99),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 53, 52, 52),
                          //color: Colors.transparent,
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  //*************************** */
                  Container(
                    margin: EdgeInsets.only(left: 171, top: 149),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 53, 52, 52),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),

                  // //********************* */
                  Container(
                    margin: EdgeInsets.only(left: 229, top: 199),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 53, 52, 52),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  // //********************* */

                  Container(
                    margin: EdgeInsets.only(left: 271, top: 268),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 53, 52, 52),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  // //********************* */
                  Container(
                    margin: EdgeInsets.only(left: 241, top: 337),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 53, 52, 52),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  // //********************* */
                  Container(
                    margin: EdgeInsets.only(left: 150, top: 337),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 53, 52, 52),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 111, top: 409),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 53, 52, 52),
                          size: 32,
                        ),
                        onPressed: (){
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),

                  // //********************* */
                  Container(
                    margin: EdgeInsets.only(left: 161, top: 480),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 53, 52, 52),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  // //********************* */

                  //********************* */
                  Container(
                    margin: EdgeInsets.only(left: 164, top: 572),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 53, 52, 52),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),

                  // //********************* */
                  Container(
                    margin: EdgeInsets.only(left: 120, top: 634),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 53, 52, 52),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  // //********************* */
                  //********************* */
                  Container(
                    margin: EdgeInsets.only(left: 67, top: 698),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 53, 52, 52),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  // //********************* */
                  // //********************* */
                  Container(
                    margin: EdgeInsets.only(left: 115, top: 752),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 53, 52, 52),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  // //********************* */

                  Container(
                    margin: EdgeInsets.only(left: 197, top: 728),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 256, top: 778),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 270, top: 854),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 167, top: 866),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 132, top: 934),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 225, top: 935),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 290, top: 971),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 296, top: 1040),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 270, top: 1100),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 176, top: 1104),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 93, top: 1071),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 38, top: 1129),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 86, top: 1201),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 181, top: 1190),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 46, 46, 46),
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 262, top: 1192),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.transparent,
                          size: 32,
                        ),
                        onPressed: () {
                          gestionSfx();
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 220, top: 95),
                    child: CircleAvatar(
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 49, 47, 47),
                          size: 38,
                        ),
                        onPressed: () {
                          gestionSfx();
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return mapFecul();
                          }));
                        },
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ]),
          ),
          Container(
            height: 350,
            margin: EdgeInsets.only(left: 315),
            child: FloatingActionButton(
                backgroundColor: Color(0xffFFA450),
                onPressed: (() {
                  gestionSfx();
                }),
                child: Container(
                  height: 60,
                  width: 60,
                  child: Image.asset("images/icm.png"),
                )),
          ),
        ]));
  }
}
