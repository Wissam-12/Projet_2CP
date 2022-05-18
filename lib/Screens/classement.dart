import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:projet/gestionSon.dart';

class Classement extends StatefulWidget {
  Classement({Key? key}) : super(key: key);

  @override
  State<Classement> createState() => _ClassementState();
}

class _ClassementState extends State<Classement> {
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
                                gestionSfx();
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
                                Icons.tiktok,
                                color: Colors.white,
                                size: 32,
                              ),
                              onPressed: () {
                                gestionSfx();
                              }),
                        ),
                        backgroundColor: Color(0xffFFA450),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        child: MaterialButton(
                          onPressed: () {
                            gestionSfx();
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
        Column(children: [
            SizedBox(height:70),
            Center(
              child:Text(
                "Classement",
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(61, 184, 110, 1),
                ),
              ),
            ),
            SizedBox(height:20),
           
              Stack(
              overflow: Overflow.visible,
              children: [
              Container(
                child: Column(children: [
                //   Center(child: Image(image:AssetImage('images/bxs_medal.png') ,height:40,width:40),),
                  SizedBox(height:11),
                  Center(child:Container(
                      height: 130,width: 130,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 164, 80, 1),
                        borderRadius: BorderRadius.circular(65)
                      ),
                    //   child: Image(image: AssetImage('images/4600_10_06 1.png'),width: 112.67,height: 112.67,),
                          
                      
                      )),
                  SizedBox(height:7),
                  Center(child: Text("Oumnia",
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(61, 184, 110, 1),
                ),
                      ),),
                  Center(child: Text("1000",
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(61, 184, 110, 1),
                ),
                      ),)
                ],)
              ),
              Positioned(
                left: 72, top: 72,
                child: Container(
                child: Column(children: [
                  Center(child: Text("2",style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          color: Color.fromRGBO(255, 164, 80, 1),
                ),)),
                  SizedBox(height:11),
                  Center(child:Container(
                      height: 100,width: 100,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 164, 80, 1),
                        borderRadius: BorderRadius.circular(50)
                      ),
                    //   child: Image(image: AssetImage('images/12-03 1.png'),width: 86.67,height: 86.67,),
                          
                      
                      )),
                  SizedBox(height:7),
                  Center(child: Text("Wissem",
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(61, 184, 110, 1),
                ),
                      ),),
                  Center(child: Text("1000",
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(61, 184, 110, 1),
                ),
                      ),)
                ],)
              ),
                ),
               Positioned(
                right: 72, top: 72,
                child: Container(
                child: Column(children: [
                  Center(child: Text("3",style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          color: Color.fromRGBO(255, 164, 80, 1),
                ),)),
                  SizedBox(height:11),
                  Center(child:Container(
                      height: 100,width: 100,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 164, 80, 1),
                        borderRadius: BorderRadius.circular(50)
                      ),
                    //   child: Image(image: AssetImage('images/12-03 1.png'),width: 86.67,height: 86.67,),
                          
                      
                      )),
                  SizedBox(height:7),
                  Center(child: Text("Nadjet",
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(61, 184, 110, 1),
                ),
                      ),),
                  Center(child: Text("1000",
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(61, 184, 110, 1),
                ),
                      ),)
                ],)
              ),
                ),
            
             
            ],),
            SizedBox(height:70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               SizedBox(
               height: 64, width: 64,
              child:ElevatedButton(onPressed: () {},child: Text("#1",),
                  style: ElevatedButton.styleFrom(
                    primary:Color.fromRGBO(255, 164, 80, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Rubik',
                      fontSize: 24,
                    )),

                  ),),
                  SizedBox(width: 6,),
                  SizedBox(
               height: 64, width: 214,
              child:ElevatedButton(onPressed: () {},child: Row(
                children: [
                  SizedBox(width:(2)),
                //   Image(image: AssetImage('images/3900_5_10 1.png'),height:45,width: 45),SizedBox(width: 12,), 
                  Column(
                    children: [
                      Text('Wissem'),
                      Text('1000',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Rubik',
                        fontSize: 14,
                      ),)
                    ],
                  )
                ],
              ),
                  style: ElevatedButton.styleFrom(
                    primary:Color.fromRGBO(255, 164, 80, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Rubik',
                      fontSize: 26,
                    )))),
            ],),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               SizedBox(
               height: 64, width: 64,
              child:ElevatedButton(onPressed: () {},child: Text("#1",),
                  style: ElevatedButton.styleFrom(
                    primary:Color.fromRGBO(255, 164, 80, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Rubik',
                      fontSize: 24,
                    )),

                  ),),
                  SizedBox(width: 6,),
                  SizedBox(
               height: 64, width: 214,
              child:ElevatedButton(onPressed: () {},child: Row(
                children: [
                  SizedBox(width:(2)),
                //   Image(image: AssetImage('images/3900_5_10 1.png'),height:45,width: 45),SizedBox(width: 12,), 
                  Column(
                    children: [
                      Text('Wissem'),
                      Text('1000',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Rubik',
                        fontSize: 14,
                      ),)
                    ],
                  )
                ],
              ),
                  style: ElevatedButton.styleFrom(
                    primary:Color.fromRGBO(255, 164, 80, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Rubik',
                      fontSize: 26,
                    )))),
            ],),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               SizedBox(
               height: 64, width: 64,
              child:ElevatedButton(onPressed: () {},child: Text("#1",),
                  style: ElevatedButton.styleFrom(
                    primary:Color.fromRGBO(255, 164, 80, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Rubik',
                      fontSize: 24,
                    )),

                  ),),
                  SizedBox(width: 6,),
                  SizedBox(
               height: 64, width: 214,
              child:ElevatedButton(onPressed: () {},child: Row(
                children: [
                  SizedBox(width:(2)),
                //   Image(image: AssetImage('images/3900_5_10 1.png'),height:45,width: 45),SizedBox(width: 12,), 
                  Column(
                    children: [
                      Text('Wissem'),
                      Text('1000',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Rubik',
                        fontSize: 14,
                      ),)
                    ],
                  )
                ],
              ),
                  style: ElevatedButton.styleFrom(
                    primary:Color.fromRGBO(255, 164, 80, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Rubik',
                      fontSize: 26,
                    )))),
            ],),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               SizedBox(
               height: 64, width: 64,
              child:ElevatedButton(onPressed: () {},child: Text("#1",),
                  style: ElevatedButton.styleFrom(
                    primary:Color.fromRGBO(255, 164, 80, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Rubik',
                      fontSize: 24,
                    )),

                  ),),
                  SizedBox(width: 6,),
                  SizedBox(
               height: 64, width: 214,
              child:ElevatedButton(onPressed: () {},child: Row(
                children: [
                  SizedBox(width:(2)),
                //   Image(image: AssetImage('images/3900_5_10 1.png'),height:45,width: 45),SizedBox(width: 12,), 
                  Column(
                    children: [
                      Text('Wissem'),
                      Text('1000',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Rubik',
                        fontSize: 14,
                      ),)
                    ],
                  )
                ],
              ),
                  style: ElevatedButton.styleFrom(
                    primary:Color.fromRGBO(255, 164, 80, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Rubik',
                      fontSize: 26,
                    )))),
            ],),
       
        ])
           
      ])));
    
  }
}