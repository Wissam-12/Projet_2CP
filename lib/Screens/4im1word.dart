import 'package:flutter/material.dart';

import '../gestionSon.dart';

class im1word extends StatefulWidget {
  im1word({Key? key}) : super(key: key);

  @override
  State<im1word> createState() => _im1wordState();
}

class _im1wordState extends State<im1word> {
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
                                Icons.settings,
                                color: Colors.white,
                                size: 32,
                              ),
                              onPressed: () {
                                gestionSfx();
                                showDialogFunc(context);
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
        SizedBox(height: 73,),
        Column(
        children: [
          
          SizedBox(height: 73,),
              SizedBox(height: 30,width: 353,
              child: Center(
                child:Text("Cliquer sur la bonne réponse",
                    style:TextStyle(color: Color.fromRGBO(61, 184, 110, 1),fontFamily: 'Rubik',fontSize: 25,fontWeight: FontWeight.w900))
              ),),
              SizedBox(height: 80,),
              Container(
                
                height: 396, width: 374,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 237,171, 1),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child:Column(
                  children: [
                    SizedBox(height: 29,),
                    Row(children: [
                      SizedBox(width: 25,),
                      InkWell(
                        onTap: () {},
                        child:Image(image: AssetImage("images/Rectangle 75.png"),width: 153,height:152),
                      ),
                      
                      SizedBox(width: 22,),
                       InkWell(
                        onTap: () {},
                        child: Image(image: AssetImage("images/Rectangle 76.png"),width: 154,height:152),
                      ),
                      
                    ],),
                    SizedBox(height: 27,),
                    Row(children: [
                      SizedBox(width: 25,),
                       InkWell(
                        onTap: () {},
                        child: Image(image: AssetImage("images/Rectangle 74.png"),width: 153,height:153),
                      ),
                      
                      SizedBox(width: 22,),
                       InkWell(
                        onTap: () {},
                        child: Image(image: AssetImage("images/Rectangle 73.png"),width: 154,height:153),
                      ),
                      
                    ],)
                  ],
                ),
                )
                ),
              SizedBox(height: 53,),
              SizedBox(height:74 ,width:319,
                      child:ElevatedButton(onPressed: () {}, 
                        child: Text("Citron",
                        style:TextStyle(color: Colors.white,fontFamily: 'Rubik',fontSize: 36,fontWeight: FontWeight.w900)),
                        style: ElevatedButton.styleFrom(
                          primary:Color.fromRGBO(61, 184, 110, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(24),
                    ),
                        ),
                        ),
                      ),


        ],
        )
        ]
        )
           
    )
    );
}}