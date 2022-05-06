import 'dart:ui';

import 'package:flutter/material.dart';

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
        //--------------------------- FIN  APP BAR------------------------------

        body: Container(
          child: ListView(reverse: true, children: [
            Stack(
              children: [
                Image.asset("images/F2.png"),
                // ---------------------------- le bouton de la mapm principal------------------
                Container(
                  margin: EdgeInsets.only(left: 295, top: 15),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return mapSucrerie();
                      }));
                    },
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
                Container(
                  margin: EdgeInsets.only(left: 118, top: 85),
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
                  margin: EdgeInsets.only(left: 170, top: 135),
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

                // //********************* */
                Container(
                  margin: EdgeInsets.only(left: 228, top: 184),
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
                // //********************* */

                Container(
                  margin: EdgeInsets.only(left: 270, top: 252),
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
                // //********************* */
                Container(
                  margin: EdgeInsets.only(left: 240, top: 320),
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
                // //********************* */
                Container(
                  margin: EdgeInsets.only(left: 148, top: 320),
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
                  margin: EdgeInsets.only(left: 110, top: 392),
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

                // //********************* */
                Container(
                  margin: EdgeInsets.only(left: 160, top: 466),
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
                // //********************* */

                //********************* */
                Container(
                  margin: EdgeInsets.only(left: 164, top: 557),
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

                // //********************* */
                Container(
                  margin: EdgeInsets.only(left: 116, top: 620),
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
                // //********************* */
                //********************* */
                Container(
                  margin: EdgeInsets.only(left: 64, top: 684),
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
                // //********************* */
                // //********************* */
                Container(
                  margin: EdgeInsets.only(left: 113, top: 738),
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
                // //********************* */

                Container(
                  margin: EdgeInsets.only(left: 192, top: 707),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 252, top: 760),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 266, top: 835),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 163, top: 846),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 128, top: 915),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 220, top: 915),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 285, top: 952),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 292, top: 1020),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 265, top: 1083),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 172, top: 1086),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 88, top: 1054),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 34, top: 1110),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 80, top: 1182),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 176, top: 1172),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 258, top: 1174),
                  child: CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
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
                        color: Color.fromARGB(255, 46, 46, 46),
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
