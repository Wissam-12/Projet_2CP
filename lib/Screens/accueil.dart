import 'package:flutter/material.dart';
import 'Collection.dart';
import 'puzzle.dart';

class accueil extends StatefulWidget {
  accueil({Key? key}) : super(key: key);

  @override
  State<accueil> createState() => _accueilState();
}

class _accueilState extends State<accueil> {
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
                            onPressed: () {}),
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
                            return Collection();
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
                'Wissam !',
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
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return puzzle();
                    }));
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