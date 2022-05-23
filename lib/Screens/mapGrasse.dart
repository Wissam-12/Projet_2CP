import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:projet/Screens/mapSucrerie.dart';

import '../gestionSon.dart';

class mapGrasse extends StatefulWidget {
  mapGrasse({Key? key}) : super(key: key);

  @override
  State<mapGrasse> createState() => _mapGrasseState();
}

class _mapGrasseState extends State<mapGrasse> {
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
        //--------------------------- FIN  APP BAR------------------------------

        body: Stack(children: [
          Container(
            child: ListView(reverse: true, children: [
              Stack(
                children: [
                  Image.asset("images/F6.png"),

                  Container(
                    margin: EdgeInsets.only(left: 124, top: 118),
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
                    margin: EdgeInsets.only(left: 173, top: 168),
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
                    margin: EdgeInsets.only(left: 230, top: 216),
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
                    margin: EdgeInsets.only(left: 273, top: 283),
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
                    margin: EdgeInsets.only(left: 242, top: 352),
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
                    margin: EdgeInsets.only(left: 153, top: 351),
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
                    margin: EdgeInsets.only(left: 114, top: 422),
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
                    margin: EdgeInsets.only(left: 164, top: 493),
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
                    margin: EdgeInsets.only(left: 167, top: 584),
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
                    margin: EdgeInsets.only(left: 122, top: 648),
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
                    margin: EdgeInsets.only(left: 70, top: 709),
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
                    margin: EdgeInsets.only(left: 119, top: 758),
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
                    margin: EdgeInsets.only(left: 198, top: 736),
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
                    margin: EdgeInsets.only(left: 256, top: 789),
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
                    margin: EdgeInsets.only(left: 270, top: 864),
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
                    margin: EdgeInsets.only(left: 169, top: 874),
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
                    margin: EdgeInsets.only(left: 134, top: 946),
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
                    margin: EdgeInsets.only(left: 226, top: 942),
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
                    margin: EdgeInsets.only(left: 290, top: 978),
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
                    margin: EdgeInsets.only(left: 296, top: 1047),
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
                    margin: EdgeInsets.only(left: 270, top: 1105),
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
                    margin: EdgeInsets.only(left: 178, top: 1109),
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
                    margin: EdgeInsets.only(left: 96, top: 1076),
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
                    margin: EdgeInsets.only(left: 42, top: 1130),
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
                    margin: EdgeInsets.only(left: 89, top: 1202),
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
                    margin: EdgeInsets.only(left: 182, top: 1193),
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
                    margin: EdgeInsets.only(left: 263, top: 1192),
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
                    margin: EdgeInsets.only(left: 245, top: 100),
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
                            return mapSucrerie();
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
