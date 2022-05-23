import 'dart:ui';

import 'package:flutter/material.dart';

import '../gestionSon.dart';

class mapSucrerie extends StatefulWidget {
  mapSucrerie({Key? key}) : super(key: key);

  @override
  State<mapSucrerie> createState() => _mapSucrerieState();
}

class _mapSucrerieState extends State<mapSucrerie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2581c4),
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
                  Image.asset("images/F2.png"),

                  Container(
                    margin: EdgeInsets.only(left: 123, top: 74),
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
                    margin: EdgeInsets.only(left: 172, top: 125),
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
                    margin: EdgeInsets.only(left: 230, top: 172),
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
                    margin: EdgeInsets.only(left: 273, top: 240),
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
                    margin: EdgeInsets.only(left: 242, top: 309),
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
                    margin: EdgeInsets.only(left: 153, top: 309),
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
                    margin: EdgeInsets.only(left: 114, top: 380),
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
                    margin: EdgeInsets.only(left: 164, top: 451),
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
                    margin: EdgeInsets.only(left: 166, top: 540),
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
                    margin: EdgeInsets.only(left: 122, top: 600),
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
                    margin: EdgeInsets.only(left: 68, top: 663),
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
                    margin: EdgeInsets.only(left: 118, top: 718),
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
                    margin: EdgeInsets.only(left: 198, top: 692),
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
                    margin: EdgeInsets.only(left: 256, top: 743),
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
                    margin: EdgeInsets.only(left: 269, top: 818),
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
                    margin: EdgeInsets.only(left: 168, top: 829),
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
                    margin: EdgeInsets.only(left: 133, top: 896),
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
                    margin: EdgeInsets.only(left: 225, top: 896),
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
                    margin: EdgeInsets.only(left: 290, top: 932),
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
                    margin: EdgeInsets.only(left: 296, top: 1000),
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
                    margin: EdgeInsets.only(left: 270, top: 1062),
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
                    margin: EdgeInsets.only(left: 177, top: 1064),
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
                    margin: EdgeInsets.only(left: 96, top: 1029),
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
                    margin: EdgeInsets.only(left: 42, top: 1085),
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
                    margin: EdgeInsets.only(left: 89, top: 1157),
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
                    margin: EdgeInsets.only(left: 182, top: 1148),
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
                    margin: EdgeInsets.only(left: 263, top: 1153),
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
                    margin: EdgeInsets.only(left: 230, top: 54),
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
                          // Navigator.of(context)
                          //     .push(MaterialPageRoute(builder: (context) {
                          //   return mapfruits();
                          // }));
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
