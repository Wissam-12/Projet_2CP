import 'package:flutter/material.dart';

class mapPrincp extends StatefulWidget {
  mapPrincp({Key? key}) : super(key: key);

  @override
  State<mapPrincp> createState() => _mapPrincpState();
}

class _mapPrincpState extends State<mapPrincp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff4dd1ff),
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          Container(
            child: ListView(reverse: true, children: [
              Stack(
                children: [
                  Image.asset("images/MapPP.png"),

                  //*************************** */

                  Container(
                    margin: EdgeInsets.only(left: 222, top: 1184),
                    child: MaterialButton(
                      onPressed: () {},
                      height: 70,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        // Color(0xffFFA450),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          // Color(0xFFFFA450),
                          backgroundImage: AssetImage("images/ex2.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 302, top: 966),
                    child: MaterialButton(
                      onPressed: () {},
                      height: 70,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        // Color(0xffFFA450),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          // Color(0xFFFFA450),
                          backgroundImage: AssetImage("images/ex2.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 94, top: 929),
                    child: MaterialButton(
                      onPressed: () {},
                      height: 70,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        // Color(0xffFFA450),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          // Color(0xFFFFA450),
                          backgroundImage: AssetImage("images/ex2.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 226, top: 834),
                    child: MaterialButton(
                      onPressed: () {},
                      height: 70,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        // Color(0xffFFA450),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          // Color(0xFFFFA450),
                          backgroundImage: AssetImage("images/ex2.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 162, top: 684),
                    child: MaterialButton(
                      onPressed: () {},
                      height: 70,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        // Color(0xffFFA450),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          // Color(0xFFFFA450),
                          backgroundImage: AssetImage("images/ex2.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 138, top: 558),
                    child: MaterialButton(
                      onPressed: () {},
                      height: 70,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        // Color(0xffFFA450),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          // Color(0xFFFFA450),
                          backgroundImage: AssetImage("images/ex2.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 306, top: 482),
                    child: MaterialButton(
                      onPressed: () {},
                      height: 70,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        // Color(0xffFFA450),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          // Color(0xFFFFA450),
                          backgroundImage: AssetImage("images/ex2.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 188, top: 208),
                    child: MaterialButton(
                      onPressed: () {},
                      height: 70,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        // Color(0xffFFA450),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          // Color(0xFFFFA450),
                          backgroundImage: AssetImage("images/ex2.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          Container(
              height: 150,
              margin: EdgeInsets.only(left: 15),
              child: FloatingActionButton(
                backgroundColor: Color(0xffFFA450),
                onPressed: (() {}),
                child: CircleAvatar(
                  radius: 28,
                  child: Container(
                    margin: EdgeInsets.only(right: 14, bottom: 5),
                    child: IconButton(
                        icon: Icon(
                          Icons.clear_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                        onPressed: () {}),
                  ),
                  backgroundColor: Color(0xffFFA450),
                ),
              )),
        ]));
  }
}
