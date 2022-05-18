import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Vrai_Faux extends StatefulWidget {
  Vrai_Faux({Key? key}) : super(key: key);

  @override
  State<Vrai_Faux> createState() => _vraiFauxState();
}

class _vraiFauxState extends State<Vrai_Faux> {
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
                              onPressed: () {
                                final player = AudioCache(prefix : 'audio/');
                                player.play('buttonsound.mp3');
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
                              onPressed: () {
                                final player = AudioCache(prefix : 'audio/');
                                player.play('buttonsound.mp3');
                              }),
                        ),
                        backgroundColor: Color(0xffFFA450),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        child: MaterialButton(
                          onPressed: () {
                            final player = AudioCache(prefix : 'audio/');
                            player.play('buttonsound.mp3');
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
        //****************************************************** */
      Container(
          height: 836,width: 428,
          color: Color.fromRGBO(235, 255, 219, 1),
          child: Column(
          
          children: [
              SizedBox(height: 73,),
              SizedBox(height: 36,width: 233,
              child: Center(
                child:Text("Vrai ou Faux",
                    style:TextStyle(color: Color.fromRGBO(61, 184, 110, 1),fontFamily: 'Rubik',fontSize: 30,fontWeight: FontWeight.w900))
              ),),
              SizedBox(height: 94,),
              Container(
                height: 178, width: 355,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 237,171, 1),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Container(
                  height: 106.8,width: 311,
                  alignment: Alignment(63,0),
                  child:Text("Les framboises sont très riches en fibres",textAlign: TextAlign.center,
                  style:TextStyle(color: Color.fromRGBO(61, 184, 110, 1),fontFamily: 'Rubik',fontSize: 20,fontWeight: FontWeight.w900))
                ),
              ),
              SizedBox(height:102),
              Container(
                height: 315,width: 205,
                child: Column(children: [
                  SizedBox(height:85 ,width:311,
                      child:ElevatedButton(onPressed: () {}, 
                        child: Text("Vrai",
                        style:TextStyle(color: Colors.white,fontFamily: 'Rubik',fontSize: 20,fontWeight: FontWeight.w900)),
                        style: ElevatedButton.styleFrom(
                          primary:Color.fromRGBO(61, 184, 110, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(24),
                    ),
                        ),
                        ),
                      ),
                      SizedBox(height:35),
                      SizedBox(height:85 ,width:311,
                      child:ElevatedButton(onPressed: () {}, 
                        child: Text("Vrai",
                        style:TextStyle(color: Colors.white,fontFamily: 'Rubik',fontSize: 20,fontWeight: FontWeight.w900)),
                        style: ElevatedButton.styleFrom(
                          primary:Color.fromRGBO(61, 184, 110, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(24),
                    ),
                        ),
                        ),
                      ),
                ],
                  
                ),
              ),
          ]
          )
      )
      ]
            ))  
           
    );
    
  }
}