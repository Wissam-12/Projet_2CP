import 'package:flutter/material.dart';

class puzzle extends StatefulWidget {
  puzzle({Key? key}) : super(key: key);

  @override
  State<puzzle> createState() => _puzzleState();
}

class _puzzleState extends State<puzzle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///**************************************************************** */
        body: Container(
            child: Stack(
      alignment: Alignment.topCenter,
      children: [
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
          ],
        ),
        //****************************************************** */

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 30, top: 30),
                child: Text("Chasse au trésor",
                    style: TextStyle(
                      fontFamily: 'Rubik-ExtraBold',
                      fontSize: 36,
                      shadows: [Shadow(blurRadius: 5.0)],
                      color: Color(0xff3DB86E),
                    ))),
            Center(
              child: Container(
                  height: 50,
                  width: 320,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xff3DB86E),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Text('Can you solve this puzzle?',
                      style: TextStyle(
                          fontFamily: 'Rubik-ExtraBold',
                          fontSize: 16,
                          color: Colors.white))),
            ),
            Container(
              width: 320,
              height: 320,
              color: Color(0xffD1F5CA),
            )
          ],
        ),
      ],
    )));
  }
}
