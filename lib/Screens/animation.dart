import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projet/Screens/home.dart';
import '../back/database.dart';
import '../back/quizz.dart';
import 'profil.dart';
import 'qcu.dart';
import 'espaceEP.dart';
import 'mapfruits.dart';





class Animation_Diamond extends StatefulWidget {
  Animation_Diamond({Key? key}) : super(key: key);

  @override
  State<Animation_Diamond> createState() => _AccueilState();
}

class _AccueilState extends State<Animation_Diamond> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Color.fromRGBO(235, 255, 219, 1),
            child: Stack(alignment: Alignment.topCenter, children: [
      Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.bottomLeft,
          //color: Colors.red,
          child: Image.asset("images/grp.png")),
      CustomScrollView(
        slivers: [
          SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 1,
              //Color(0xFFEBFFDB),
              automaticallyImplyLeading: false,
              toolbarHeight: 90,
              actions: [
                Row(
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 32,
                            ),
                            onPressed: () {
                               Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return HomePage();
                              })); 
                            },
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
                        margin: EdgeInsets.only(right: 20, left: 20),
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
                                    backgroundImage:
                                        AssetImage("images/pom.png"),
                                  ),
                                )),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                '124',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Rubik-ExtraBold'),
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
                        onPressed: () {
                           Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Profil();
                          })); 
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
        ],
      ),
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            // width: 500,
            child: Center(
          child: Container(
            height: 280,
            width: 280,
            child: Image.asset("images/giftbox-unscreen.gif"),
          ),
        )),
        SizedBox(height: 100,),
       
        Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Center(
            child: SizedBox(
                height: 74,
                width: 177,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Second_Route()),
            );
                  },
                  child: Text("Collecter"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Color(0XFF7DFF8A),
                    textStyle: TextStyle(
                        fontFamily: 'Rubik-ExtraBold',
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        ),
        
      ])
    ])));
  }
}




class Second_Route extends StatefulWidget {
 Second_Route({Key? key}) : super(key: key);

  @override
  State<Second_Route> createState() => _Second_RouteState();
}

class _Second_RouteState extends State<Second_Route> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Color.fromRGBO(235, 255, 219, 1),
            child: Stack(alignment: Alignment.topCenter, children: [
     
      CustomScrollView(
        slivers: [
          SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 1,
              //Color(0xFFEBFFDB),
              automaticallyImplyLeading: false,
              toolbarHeight: 90,
              actions: [
                Row(
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        radius: 28,
                        child: IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 32,
                            ),
                            onPressed: () {
                               Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return HomePage();
                              })); 
                            },
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
                        margin: EdgeInsets.only(right: 20, left: 20),
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
                                    backgroundImage:
                                        AssetImage("images/pom.png"),
                                  ),
                                )),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                '124',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Rubik-ExtraBold'),
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
                        onPressed: () {
                           Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Profil();
                          })); 
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
        ],
      ),
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(height:70),
        Container(
            // width: 500,
            child: Center(
          child: Container(
            
            child: Image.asset("images/Group 622.png",height: 700,width:500),
          ),
        )),
        
        
      ])
    ])));
  }
}



