import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projet/Screens/map.dart';
import 'package:projet/Screens/mapPrincip.dart';

import '../gestionSon.dart';

class maphig extends StatefulWidget {
  maphig({Key? key}) : super(key: key);

  @override
  State<maphig> createState() => _maphigState();
}

class _maphigState extends State<maphig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff377daa),
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
                    Image.asset("images/F.png"),

// ------------------------------- DEBUT DES NIVEAUX--------------------------------
                    Container(
                      margin: EdgeInsets.only(left: 148, top: 100),
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
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return map();
                            }));
                          },
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),

                    //*************************** */
                    Container(
                      margin: EdgeInsets.only(left: 248, top: 198),
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
                      margin: EdgeInsets.only(left: 160, top: 222),
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
                      margin: EdgeInsets.only(left: 61, top: 228),
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
                      margin: EdgeInsets.only(left: 67, top: 300),
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
                      margin: EdgeInsets.only(left: 134, top: 355),
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
                      margin: EdgeInsets.only(left: 156, top: 414),
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
                      margin: EdgeInsets.only(left: 139, top: 483),
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
                      margin: EdgeInsets.only(left: 92, top: 550),
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
                      margin: EdgeInsets.only(left: 106, top: 612),
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
                      margin: EdgeInsets.only(left: 203, top: 628),
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
                      margin: EdgeInsets.only(left: 254, top: 670),
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
                      margin: EdgeInsets.only(left: 236, top: 725),
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
                      margin: EdgeInsets.only(left: 194, top: 778),
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
                      margin: EdgeInsets.only(left: 130, top: 817),
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
                      margin: EdgeInsets.only(left: 114, top: 868),
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
                      margin: EdgeInsets.only(left: 200, top: 868),
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
                      margin: EdgeInsets.only(left: 245, top: 929),
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
                      margin: EdgeInsets.only(left: 226, top: 990),
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
                      margin: EdgeInsets.only(left: 188, top: 1040),
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
                      margin: EdgeInsets.only(left: 108, top: 1051),
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
                      margin: EdgeInsets.only(left: 42, top: 1090),
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
                      margin: EdgeInsets.only(left: 106, top: 1134),
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
                      margin: EdgeInsets.only(left: 200, top: 1156),
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
                      margin: EdgeInsets.only(left: 245, top: 1213),
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
                      margin: EdgeInsets.only(left: 272, top: 1294),
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
                      margin: EdgeInsets.only(left: 245, top: 1367),
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
                      margin: EdgeInsets.only(left: 152, top: 1385),
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
                      margin: EdgeInsets.only(left: 73, top: 1430),
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
                      margin: EdgeInsets.only(left: 116, top: 1478),
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
                      margin: EdgeInsets.only(left: 201, top: 1490),
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
                      margin: EdgeInsets.only(left: 252, top: 1548),
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
                      margin: EdgeInsets.only(left: 267, top: 1610),
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
                    Container(
                      margin: EdgeInsets.only(left: 206, top: 1674),
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
                    Container(
                      margin: EdgeInsets.only(left: 206, top: 1674),
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
                    Container(
                      margin: EdgeInsets.only(left: 120, top: 1674),
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
                    Container(
                      margin: EdgeInsets.only(left: 170, top: 1725),
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
                    Container(
                      margin: EdgeInsets.only(left: 228, top: 1775),
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
                    Container(
                      margin: EdgeInsets.only(left: 271, top: 1840),
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
                    Container(
                      margin: EdgeInsets.only(left: 241, top: 1913),
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
                    Container(
                      margin: EdgeInsets.only(left: 150, top: 1913),
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
                    Container(
                      margin: EdgeInsets.only(left: 110, top: 1984),
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
                    Container(
                      margin: EdgeInsets.only(left: 160, top: 2055),
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
                    Container(
                      margin: EdgeInsets.only(left: 164, top: 2146),
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
                    Container(
                      margin: EdgeInsets.only(left: 120, top: 2210),
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
                    Container(
                      margin: EdgeInsets.only(left: 66, top: 2274),
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
                    Container(
                      margin: EdgeInsets.only(left: 114, top: 2327),
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
                    Container(
                      margin: EdgeInsets.only(left: 196, top: 2300),
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
                    Container(
                      margin: EdgeInsets.only(left: 254, top: 2354),
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
                    Container(
                      margin: EdgeInsets.only(left: 268, top: 2428),
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
                    Container(
                      margin: EdgeInsets.only(left: 167, top: 2441),
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
                    Container(
                      margin: EdgeInsets.only(left: 132, top: 2510),
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
                    Container(
                      margin: EdgeInsets.only(left: 225, top: 2510),
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
                    Container(
                      margin: EdgeInsets.only(left: 290, top: 2545),
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
                    Container(
                      margin: EdgeInsets.only(left: 295, top: 2612),
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
                    Container(
                      margin: EdgeInsets.only(left: 269, top: 2675),
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
                    Container(
                      margin: EdgeInsets.only(left: 175, top: 2676),
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
                    Container(
                      margin: EdgeInsets.only(left: 94, top: 2644),
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
                    Container(
                      margin: EdgeInsets.only(left: 37, top: 2700),
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
                    Container(
                      margin: EdgeInsets.only(left: 85, top: 2771),
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
                    Container(
                      margin: EdgeInsets.only(left: 179, top: 2763),
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
                    Container(
                      margin: EdgeInsets.only(left: 260, top: 2763),
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
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return MapPrincp();
                    }));
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
