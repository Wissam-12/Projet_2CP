import 'dart:ui';
import 'package:flutter/material.dart';

class Collection extends StatefulWidget {
  Collection({Key? key}) : super(key: key);

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                decoration:
                    BoxDecoration(color: Colors.grey.shade800.withOpacity(0.1)),
              ),
            ),
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
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  right: 30,
                  left: 30,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 110,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 34),
                              child: Text(
                                "Collection",
                                style: TextStyle(
                                    fontFamily: 'Rubik-ExtraBold',
                                    fontSize: 42,
                                    color: Color(0xff3DB86E)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                width: 88,
                                height: 88,
                                child: Image.asset(
                                  "images/item.png",
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 8,
                                color: Color(0xff4AE287),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Image.asset("images/imm.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
