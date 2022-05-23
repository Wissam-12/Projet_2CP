import 'package:flutter/material.dart';
import 'package:projet/gestionSon.dart';

class Notice extends StatefulWidget {
  Notice({Key? key}) : super(key: key);

  @override
  State<Notice> createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEBFFDB),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              _tripEditModalBottonSheet(context);
            },
            child: Text("button"),
   
       ),
        ));
  }
}

void _tripEditModalBottonSheet(context) {
  encouragement();
  showModalBottomSheet(
      isDismissible: false,
      enableDrag: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(50),
        ),
      ),
      context: context,
      builder: (BuildContext bc) {
        return Container(
            height: 640,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffFAFFDA),
              //borderRadius: BorderRadius.circular(50),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 300),
                  width: 60,
                  // padding: EdgeInsets.only(right: 600),

                  decoration: BoxDecoration(
                    color: Color(0xffFAFFDA),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffFAFFDA),
                        shadowColor: Color(0xffFAFFDA),
                        elevation: 0.01),
                    onPressed: () => Navigator.of(context).pop(),
                    child: Container(
                      color: Color(0xffFAFFDA),
                      margin: EdgeInsets.only(right: 300),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Color(0xffFFA450),
                        size: 45,
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 280,
                    child: Image(
                      image: AssetImage('images/notice.png'),
                      fit: BoxFit.fill,
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "BRAVO!",
                      style: TextStyle(
                          color: Color(0xffFFC700),
                          fontSize: 56,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w900),
                    )),
                Container(
                  margin: EdgeInsets.only(right: 40, left: 40, bottom: 10),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna al.  sed do eiusmod tempor incididunt ut labore et dolore magna al.",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                      )),
                ),
                Container(height: 10),
                Container(
                  child: RaisedButton(
                    splashColor: Color.fromARGB(255, 253, 196, 143),
                    textColor: Colors.white,
                    color: Color(0xffFFA450),
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      stopNotice();
                    },
                    child: Text(
                      "Suivant",
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                )
              ],
            ));
      });
      
      
      
      int i = 0 ; //ici on met le numéro du niveau
      noticeSon(i);
}

