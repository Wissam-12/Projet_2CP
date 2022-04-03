import 'package:flutter/material.dart';

class cons extends StatefulWidget {
  cons({Key? key}) : super(key: key);

  @override
  State<cons> createState() => _consState();
}

class _consState extends State<cons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                  backgroundColor: Color(0xFFEBFFDB),
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
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return cons();
                                  }));
                                }),
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
                        MaterialButton(
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
                      ],
                    ),
                  ]),
            ],
          ),
        ),
      ]),
    );
  }
}
