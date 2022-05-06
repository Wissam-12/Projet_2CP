import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projet/Screens/mapSucrerie.dart';

class map extends StatefulWidget {
  const map({Key? key}) : super(key: key);

  @override
  State<map> createState() => _mapState();
}

class _mapState extends State<map> {
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
                            onPressed: () {}),
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
                            Icons.music_note,
                            color: Colors.white,
                            size: 32,
                          ),
                          onPressed: () {}),
                    ),
                    backgroundColor: Color(0xffFFA450),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    child: MaterialButton(
                      onPressed: () {},
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
                    Image.asset("images/F1.png"),
                    // ---------------------------- le bouton de la mapm principal------------------
                    Container(
                      margin: EdgeInsets.only(left: 295),
                      child: MaterialButton(
                        onPressed: () {},
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          radius: 28,
                          //
                          backgroundColor: Color(0xffFFA450),
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Image.asset("images/icm.png"),
                          ),
                        ),
                      ),
                    ),
// ------------------------------- DEBUT DES NIVEAUX--------------------------------
                    Container(
                      margin: EdgeInsets.only(left: 238, top: 30),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 46, 46, 46),
                            size: 38,
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return mapSucrerie();
                            }));
                          },
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 273, top: 106),
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
                      margin: EdgeInsets.only(left: 246, top: 180),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),

                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 151, top: 194),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */

                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 70, top: 238),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 115, top: 287),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 200, top: 300),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 253, top: 358),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),

                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 268, top: 424),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */

                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 205, top: 487),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 118, top: 487),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 168, top: 537),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 227, top: 586),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),

                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 270, top: 656),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                            icon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 53, 52, 52),
                              size: 32,
                            ),
                            onPressed: () {}),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 240, top: 725),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 149, top: 727),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 108, top: 799),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 160, top: 872),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
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
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 117, top: 1028),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 64, top: 1092),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */
                    //********************* */
                    Container(
                      margin: EdgeInsets.only(left: 114, top: 1146),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //********************* */

                    Container(
                      margin: EdgeInsets.only(left: 196, top: 1122),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 255, top: 1172),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 269, top: 1248),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 165, top: 1260),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 130, top: 1327),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 223, top: 1326),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 288, top: 1364),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 295, top: 1434),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 269, top: 1495),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 173, top: 1498),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 92, top: 1465),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 35, top: 1522),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 83, top: 1596),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 179, top: 1587),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 262, top: 1587),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 53, 52, 52),
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ],
                )
              ]),
            ))
          ]),
        ));
  }
}
