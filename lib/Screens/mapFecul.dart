import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projet/Screens/mapfruits.dart';

import '../gestionSon.dart';

class mapFecul extends StatefulWidget {
  mapFecul({Key? key}) : super(key: key);

  @override
  State<mapFecul> createState() => _mapFeculState();
}

class _mapFeculState extends State<mapFecul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff367eac),
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
        // ---------------------------------------FIN APP BAR---------------------------

        body: Container(
          margin: EdgeInsets.only(top: 30),
          child: Stack(children: [
            Container(
                child: Container(
              child: ListView(reverse: true, children: [
                Stack(
                  children: [
                    Image.asset("images/F5.png"),

// ------------------------------- DEBUT DES NIVEAUX--------------------------------
                    Container(
                      margin: EdgeInsets.only(left: 241, top: 140),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 46, 46, 46),
                            size: 38,
                          ),
                          onPressed: () {
                            gestionSfx();
                            // Navigator.of(context)
                            //     .push(MaterialPageRoute(builder: (context) {
                            //   return mapfruits();
                            //}));
                          },
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 273, top: 208),
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
                            // Navigator.of(context)
                            //     .push(MaterialPageRoute(builder: (context) {
                            //   return Collection();
                            //  }
                            // )
                            // );
                          },
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //*************************** */
                    Container(
                      margin: EdgeInsets.only(left: 246, top: 280),
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

                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 155, top: 294),
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
                    //********************* */

                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 76, top: 338),
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
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 119, top: 387),
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
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 204, top: 400),
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
                      margin: EdgeInsets.only(left: 254, top: 454),
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

                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 268, top: 519),
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
                    //********************* */

                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 207, top: 583),
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
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 123, top: 581),
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
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 172, top: 632),
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
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 230, top: 680),
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

                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 272, top: 748),
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
                            }),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 242, top: 816),
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
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 152, top: 817),
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
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 113, top: 889),
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
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 163, top: 963),
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
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 167, top: 1049),
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
                    //********************* */

                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 120, top: 1108),
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
                    //********************* */

                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 69, top: 1173),
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
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 118, top: 1224),
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
                    //********************* */

                    Container(
                      margin: EdgeInsets.only(left: 199, top: 1199),
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
                      margin: EdgeInsets.only(left: 256, top: 1252),
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
                      margin: EdgeInsets.only(left: 269, top: 1325),
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
                      margin: EdgeInsets.only(left: 169, top: 1336),
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
                      margin: EdgeInsets.only(left: 134, top: 1404),
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
                      margin: EdgeInsets.only(left: 226, top: 1404),
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
                      margin: EdgeInsets.only(left: 291, top: 1441),
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
                      margin: EdgeInsets.only(left: 296, top: 1506),
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
                      margin: EdgeInsets.only(left: 270, top: 1566),
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
                      margin: EdgeInsets.only(left: 177, top: 1574),
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
                      margin: EdgeInsets.only(left: 96, top: 1538),
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
                      margin: EdgeInsets.only(left: 42, top: 1594),
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
                      margin: EdgeInsets.only(left: 89, top: 1665),
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
                      margin: EdgeInsets.only(left: 182, top: 1655),
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
                      margin: EdgeInsets.only(left: 262, top: 1656),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            //color: Color.fromARGB(255, 53, 52, 52),
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
                  ],
                )
              ]),
            )),
            Container(
              height: 280,
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
          ]),
        ));
  }
}
