// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../back/database.dart';
import '../back/quizz.dart';
import 'profil.dart';
import 'qcu.dart';
import 'espaceEP.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:projet/gestionSon.dart';

class Accueil extends StatefulWidget {
  Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
  
}

class _AccueilState extends State<Accueil> {
  //final user = FirebaseAuth.instance.currentUser!;
  List<Quizz> quizzes = [];

  @override
  void initState() {
    // getPref();
    super.initState();
    getQuizzes().then((quizzes) => {
          this.setState(() {
            this.quizzes = quizzes;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
                              Icons.group,
                              color: Colors.white,
                              size: 32,
                            ),
                            onPressed: () {
                              gestionSfx();
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return ConseilsEP();
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
          margin: EdgeInsets.only(top: 100, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Salut',
                style: TextStyle(
                    fontFamily: 'Rubik-ExtraBold',
                    fontSize: 42,
                    color: Color(0xff3DB86E),
                    fontWeight: FontWeight.bold),
              ),
              Text('     '),
              Text(
                'hi',
                //((user.displayName!).split(' '))[0],
                style: TextStyle(
                    fontFamily: 'Rubik-ExtraBold',
                    fontSize: 42,
                    color: Color(0xffFFA450),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Heureux de te revoir !',
                style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 36,
                    color: Color(0xff3DB86E),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Center(
            child: SizedBox(
                height: 74,
                width: 177,
                child: ElevatedButton(
                  onPressed: () {
                    
                    gestionSfx();
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return Qcu(quizzes[1], user);
                    // }));
                  },
                  child: Text("jouer"),
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
        Container(
            // width: 500,
            child: Center(
          child: Container(
            height: 280,
            width: 280,
            child: Image.asset("images/LOGO.png"),
          ),
        ))
      ])
    ])));
  }
}


