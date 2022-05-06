import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import '../google_sign_in.dart';

class Profil extends StatefulWidget {
  Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _profilState();
}

class _profilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(

        ///**************************************************************** */
        body: Container(
            color: Color.fromRGBO(235, 255, 219, 1),
            child: Stack(alignment: Alignment.topCenter, children: [
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
                                    backgroundImage:
                                        AssetImage("images/bag.png"),
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
                  SizedBox(
                    height: 120,
                  ),
                  Container(
                      width: 285,
                      height: 64,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(255, 164, 80, 1),
                      ),
                      child: Center(
                        child: Text(((user.displayName!).split(' '))[0],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Rubik',
                              fontSize: 32,
                            )),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 150, height: 150,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 164, 80, 1),
                            borderRadius: BorderRadius.circular(75),
                          ),
                          // child: Image(image: AssetImage("images/3400_5_04 1.png",),height:130,width: 130,),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 145,
                        child: InkWell(
                          onTap: () {},
                          //  child: Image(image: AssetImage("images/Group 62.png")),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 19),
                  Stack(clipBehavior: Clip.none, children: [
                    Positioned(
                      child: Container(
                        height: 24,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 164, 80, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: LinearProgressIndicator(
                            value: 0.5,
                            valueColor:
                                new AlwaysStoppedAnimation(Colors.white),
                            backgroundColor: Color.fromRGBO(255, 164, 80, 1),
                            minHeight: 12,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -19,
                      left: -10,
                      child: Container(
                        height: 60, width: 60,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 164, 80, 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        //   child: Image(image: AssetImage('images/Group5.png')),
                      ),
                    ),
                  ]),
                  SizedBox(height: 48),
                  SizedBox(
                    height: 64,
                    width: 292,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          SizedBox(width: (107 - 86)),
                          // Image(image: AssetImage('images/bxs_book-bookmark.png')),
                          SizedBox(
                            width: 16,
                          ),
                          Text('Acquisition'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          elevation: 100,
                          shadowColor: Color.fromRGBO(255, 164, 80, 1),
                          primary: Color.fromRGBO(255, 164, 80, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Rubik',
                            fontSize: 26,
                          )),
                    ),
                  ),
                  SizedBox(height: 26),
                  SizedBox(
                    height: 64,
                    width: 292,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          SizedBox(width: (107 - 86)),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text('Classement'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(255, 164, 80, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Rubik',
                            fontSize: 26,
                          )),
                    ),
                  ),
                  SizedBox(height: 26),
                  SizedBox(
                    height: 64,
                    width: 292,
                    child: ElevatedButton(
                      onPressed: () {
                        final provider = Provider.of<GoogleSignInProvider>(
                            context,
                            listen: false);
                        provider.logout();
                      },
                      child: Row(
                        children: [
                          SizedBox(width: (107 - 86)),
                          //   Image(image: AssetImage('images/ion_exit.png')),
                          SizedBox(
                            width: 16,
                          ),
                          Text('Déconnexion'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(255, 164, 80, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Rubik',
                            fontSize: 26,
                          )),
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: Color.fromRGBO(140, 180, 156, 1),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                      height: 28,
                      width: 178,
                      child: InkWell(
                        child: Text(
                          "Notre Site web",
                          style: TextStyle(
                            color: Color.fromRGBO(140, 180, 156, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            fontFamily: 'Rubik',
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ))
                ],
              )
            ])));
  }
}
