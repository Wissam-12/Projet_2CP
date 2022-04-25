import 'package:flutter/material.dart';

class sandwichs extends StatefulWidget {
  sandwichs({Key? key}) : super(key: key);

  @override
  State<sandwichs> createState() => _sandwichsState();
}

class _sandwichsState extends State<sandwichs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBFFDB),
      body: ListView(
        children: [
          Container(
            height: 150,
          ),
          Center(
              child: Text(
            "Sandwichs",
            style: TextStyle(
                color: Color(0xff3DB86E),
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w900,
                fontSize: 42),
          )),
          Container(
            padding: EdgeInsets.only(top: 50, bottom: 40),
            margin: EdgeInsets.symmetric(horizontal: 62),
            child: Image(image: AssetImage('images/sandwich.png')),
          ),
          Center(
            //padding: EdgeInsets.only(top: 20),
            child: Text("Recette",
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 14, letterSpacing: 6)),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 30, bottom: 10),
            child: Text("Benefits of this recipe",
                style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 20,
                    fontWeight: FontWeight.w500)),
          ),
          Container(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 40),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                style: TextStyle(
                    fontFamily: 'Rubik', fontSize: 15, wordSpacing: 8),
              )),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
            child: Text("Ingrédients",
                style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 20,
                    fontWeight: FontWeight.w500)),
          ),
          Container(
              child: Column(
            children: [
              // 2 rows
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: Color(0xffD1F5CA),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text("Salades",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: Color(0xffD1F5CA),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text("Something",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    decoration: BoxDecoration(
                      color: Color(0xffD1F5CA),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text("Add on other",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: Color(0xffD1F5CA),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text("Write anything here",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    decoration: BoxDecoration(
                      color: Color(0xffD1F5CA),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text("Ramadan Text",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              )
            ],
          )),
          Container(
              margin: EdgeInsets.only(left: 30, top: 40),
              child: Text("Steps",
                  style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 20,
                      fontWeight: FontWeight.w500))),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: ListTile(
              title: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
              leading: Container(
                // padding: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.circle,
                  size: 10,
                  color: Color(0xffFF6F50),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: ListTile(
              title: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
              leading: Container(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.circle,
                  size: 10,
                  color: Color(0xffFF6F50),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: ListTile(
              title: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod .",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
              leading: Container(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.circle,
                  size: 10,
                  color: Color(0xffFF6F50),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: ListTile(
              title: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
              leading: Container(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.circle,
                  size: 10,
                  color: Color(0xffFF6F50),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: ListTile(
              title: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna al.",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
              leading: Container(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.circle,
                  size: 10,
                  color: Color(0xffFF6F50),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 60),
          ),
          Container(child: Image(image: AssetImage('images/va.png'))),
        ],
      ),
    );
  }
}
