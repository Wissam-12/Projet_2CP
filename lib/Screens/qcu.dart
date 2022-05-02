import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../back/database.dart';
import '../back/quizz.dart';
import 'dart:io';

class Qcu extends StatefulWidget {
  final Quizz quizz;
  final User user;

  Qcu(this.quizz, this.user);

  @override
  State<Qcu> createState() => _QcuState();
}

class _QcuState extends State<Qcu> {
  List<Color> coleur = [Color(0xFF3DB86E), Color(0xFF3DB86E), Color(0xFF3DB86E), Color(0xFF3DB86E)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///**************************************************************** */
        body: Container(
          color: Color.fromRGBO(235, 255, 219, 1),
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
          
          children: [
              SizedBox(height: 140,),
              SizedBox(height: 30,width: 353,
              child: Center(
                child:Text("Cliquer sur la bonne réponse",
                    style:TextStyle(color: Color.fromRGBO(61, 184, 110, 1),fontFamily: 'Rubik',fontSize: 25,fontWeight: FontWeight.w900))
              ),),
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10,),
                height: 105, width: 355,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 237,171, 1),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child:Text(this.widget.quizz.question,textAlign: TextAlign.center,
                  style:TextStyle(color: Color.fromRGBO(61, 184, 110, 1),fontFamily: 'Rubik',fontSize: 20,fontWeight: FontWeight.w900))
                ),
              ),
              SizedBox(height:26),
              Container(
                height: (11.2+ 95.2*this.widget.quizz.choices.length + 39 ), width: 362,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 237,171, 1),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child:Column(
                    children: [
                      SizedBox(height: 11.2,),
                      listchoices(),
                    ],
                  ),
                  ),
              ),
                  
           ], ),
       
       ],))
      
       );
  }
  listchoices(){
    return Column(
      children: List<Widget>.generate(this.widget.quizz.choices.length, (int index){
        return Column(
        children: [
          SizedBox(height: 36.6),
          SizedBox(
            height:58.6 ,
            width:296,
            child:AnimatedContainer(
                duration: Duration(milliseconds: 800),
                decoration: BoxDecoration(
                  color: coleur[index],
                  borderRadius:BorderRadius.circular(24),
                ),
                child: ElevatedButton(
                onPressed: () {
                  if (index == this.widget.quizz.rightAnswer){
                    print("Gagner");
                  }
                  else{
                    setState((){
                      coleur[index] = Colors.red;
                    });
                    Future.delayed(Duration(milliseconds: 800)).then((_) {
                      setState(() {
                        coleur[index] = Color(0xFF3DB86E);
                      });
                    });
                  }
                }, 
                child: Center(
                  child:Text(
                    this.widget.quizz.choices[index],
                    style:TextStyle(
                      color: Colors.white,
                      fontFamily: 'Rubik',
                      fontSize: 20,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                ),
              ),
            ),
          ),
        ],);
      }),
    );
  }
}