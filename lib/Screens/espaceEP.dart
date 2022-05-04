import 'package:flutter/material.dart';
import '../Model/listConseils.dart';

class ConseilsEP extends StatefulWidget {
  ConseilsEP({Key? key}) : super(key: key);

  @override
  State<ConseilsEP> createState() => _ConseilsEPState();
}

class _ConseilsEPState extends State<ConseilsEP> {
  List<String> tags = ["All", "Salades", "Desserts", "Plats Chauds", "Sandwichs"];
  int selectedindex = 0;
  List<Widget> pages (Widget lsTags){
    return [
      Container(
          padding: EdgeInsets.only(top: 120),
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(horizontal: 42, vertical: 30),
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 40),
                child: Center(
                  child: Text(
                    "Conseils",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 42,
                        fontFamily: 'Rubik-ExtraBold.ttf',
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              ConseilModel.afficher(),
            ],
          )),
      //SECOND PAGE LES RECETTTES
      Container(
        child: Column(children: [
          Container(
            // LE APP BAR OU IL DEVRAIT ETRE LES BOUTONS
            // height: 135,
            padding: EdgeInsets.only(top: 116),
            child: Text("-"),
          ),

          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 42),
            child: Text(
              "Recettes",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'Rubik',
                  color: Color(0xff3DB86E),
                  fontSize: 42,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 42, bottom: 25),
            child: Text(
              "Plein de recettes saines pour vos enfants",
              style: TextStyle(
                  color: Colors.black, fontSize: 14, fontFamily: 'Poppins'),
            ),
          ),
          // ELEMENT OF "COLUMN"
          // LIST OF TYPE OF THE DISH :
          lsTags,


          // ELEMENT OF "COLUMN"
          // ROW OF COLUMN => THE DISHES
          Container(
            height: 475, //checked
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 65),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffBCFA7B),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: 150,
                            height: 223,
                            child: Column(
                              children: [
                                Container(
                                  height: 86,
                                  width: 124,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage("images/tacos.jpg"))),
                                ),
                                /* GestureDetector(//IL ME SIGNALE QUE CONTEXT EST INDEFINI
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                        return sandwichs();
                                      }),
                                    );
                                  },
                                  child: Container(
                                    height: 86,
                                    width: 124,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image:
                                                AssetImage("images/tacos.jpg"))),
                                  ),
                                ),*/
                                Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 8),
                                  child: Text(
                                    "Tacos",
                                    style: TextStyle(
                                        fontFamily: 'Rubik',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 36),
                                      alignment: Alignment.center,
                                      child: Text(
                                        " 60 mins    ",
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.access_time_filled,
                                        size: 17,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffE8C0FF),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: 150,
                            height: 223,
                            child: Column(
                              children: [
                                Container(
                                  height: 140,
                                  width: 124,
                                  // padding: EdgeInsets.only(top: 30),

                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          //alignment: Alignment.center,
                                          image: AssetImage("images/lait.png"))),
                                  // child: Text("tdfyghj"),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    "Biscuits",
                                    style: TextStyle(
                                        fontFamily: 'Rubik',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 36),
                                      alignment: Alignment.center,
                                      child: Text(
                                        " 60 mins    ",
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.access_time_filled,
                                        size: 17,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 65),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffBCFA7B),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: 150,
                            height: 223,
                            child: Column(
                              children: [
                                Container(
                                  height: 86,
                                  width: 124,
                                  // padding: EdgeInsets.only(top: 30),

                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          //alignment: Alignment.center,
                                          image: AssetImage("images/tacos.jpg"))),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 8),
                                  child: Text(
                                    "Tacos",
                                    style: TextStyle(
                                        fontFamily: 'Rubik',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 36),
                                      alignment: Alignment.center,
                                      child: Text(
                                        " 60 mins    ",
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.access_time_filled,
                                        size: 17,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffE8C0FF),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: 150,
                            height: 223,
                            child: Column(
                              children: [
                                Container(
                                  height: 140,
                                  width: 124,
                                  // padding: EdgeInsets.only(top: 30),

                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          //alignment: Alignment.center,
                                          image: AssetImage("images/lait.png"))),
                                  // child: Text("tdfyghj"),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    "Biscuits",
                                    style: TextStyle(
                                        fontFamily: 'Rubik',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 36),
                                      alignment: Alignment.center,
                                      child: Text(
                                        " 60 mins    ",
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.access_time_filled,
                                        size: 17,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ],
                    )),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32), //, vertical: 20),
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 65),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffBCFA7B),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: 150,
                            height: 223,
                            child: Column(
                              children: [
                                Container(
                                  height: 86,
                                  width: 124,
                                  // padding: EdgeInsets.only(top: 30),

                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          //alignment: Alignment.center,
                                          image: AssetImage("images/tacos.jpg"))),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 8),
                                  child: Text(
                                    "Tacos",
                                    style: TextStyle(
                                        fontFamily: 'Rubik',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 36),
                                      alignment: Alignment.center,
                                      child: Text(
                                        " 60 mins    ",
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.access_time_filled,
                                        size: 17,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffE8C0FF),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: 150,
                            height: 223,
                            child: Column(
                              children: [
                                Container(
                                  height: 140,
                                  width: 124,
                                  // padding: EdgeInsets.only(top: 30),

                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          //alignment: Alignment.center,
                                          image: AssetImage("images/lait.png"))),
                                  // child: Text("tdfyghj"),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    "Biscuits",
                                    style: TextStyle(
                                        fontFamily: 'Rubik',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 36),
                                      alignment: Alignment.center,
                                      child: Text(
                                        " 60 mins    ",
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.access_time_filled,
                                        size: 17,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 65),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffBCFA7B),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: 150,
                            height: 223,
                            child: Column(
                              children: [
                                Container(
                                  height: 86,
                                  width: 124,
                                  // padding: EdgeInsets.only(top: 30),

                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          //alignment: Alignment.center,
                                          image: AssetImage("images/tacos.jpg"))),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 8),
                                  child: Text(
                                    "Tacos",
                                    style: TextStyle(
                                        fontFamily: 'Rubik',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 36),
                                      alignment: Alignment.center,
                                      child: Text(
                                        " 60 mins    ",
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.access_time_filled,
                                        size: 17,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffE8C0FF),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: 150,
                            height: 223,
                            child: Column(
                              children: [
                                Container(
                                  height: 140,
                                  width: 124,
                                  // padding: EdgeInsets.only(top: 30),

                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          //alignment: Alignment.center,
                                          image: AssetImage("images/lait.png"))),
                                  // child: Text("tdfyghj"),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    "Biscuits",
                                    style: TextStyle(
                                        fontFamily: 'Rubik',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 36),
                                      alignment: Alignment.center,
                                      child: Text(
                                        " 60 mins    ",
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.access_time_filled,
                                        size: 17,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ],
                    )),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32), //, vertical: 20),
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 65),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffBCFA7B),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: 150,
                            height: 223,
                            child: Column(
                              children: [
                                Container(
                                  height: 86,
                                  width: 124,
                                  // padding: EdgeInsets.only(top: 30),

                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          //alignment: Alignment.center,
                                          image: AssetImage("images/tacos.jpg"))),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 8),
                                  child: Text(
                                    "Tacos",
                                    style: TextStyle(
                                        fontFamily: 'Rubik',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 36),
                                      alignment: Alignment.center,
                                      child: Text(
                                        " 60 mins    ",
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.access_time_filled,
                                        size: 17,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffE8C0FF),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: 150,
                            height: 223,
                            child: Column(
                              children: [
                                Container(
                                  height: 140,
                                  width: 124,
                                  // padding: EdgeInsets.only(top: 30),

                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          //alignment: Alignment.center,
                                          image: AssetImage("images/lait.png"))),
                                  // child: Text("tdfyghj"),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    "Biscuits",
                                    style: TextStyle(
                                        fontFamily: 'Rubik',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 36),
                                      alignment: Alignment.center,
                                      child: Text(
                                        " 60 mins    ",
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.access_time_filled,
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ],
                    )),
              ],
            ),
          ),
        ]),
      ),
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 140),
            child: Text(
              "Statistiques de l'utilisateur",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff3db86e),
                  fontFamily: 'Rubik',
                  fontSize: 32,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40, top: 30, bottom: 20),
            child: Row(
              children: [
                Container(
                  //LE PREMIER BOX
                  width: 155,
                  height: 220,
                  decoration: BoxDecoration(
                    color: Color(0xffD2EDDD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding:
                            EdgeInsets.only(top: 10, left: 14, right: 9),
                        title: Text(
                          "Apprentissage continu",
                          style: TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        trailing: Icon(
                          Icons.calendar_month_rounded,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, bottom: 15),
                        child: Text(
                          "Vous êtes sur une séquence de",
                          style: (TextStyle(fontFamily: 'Poppins', fontSize: 8)),
                        ),
                      ),
                      Text("5",
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 50,
                            fontWeight: FontWeight.w500,
                          )),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Jours",
                          style: (TextStyle(fontFamily: 'Poppins', fontSize: 10)),
                        ),
                      ),
                      Text(
                        "Meilleure séquence : 7J",
                        style: (TextStyle(fontFamily: 'Poppins', fontSize: 10)),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 10,
                ),
                // LE DEUXIEME BOX
                Container(
                  width: 155,
                  height: 220,
                  decoration: BoxDecoration(
                    color: Color(0xffEEF2C6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding:
                            EdgeInsets.only(top: 10, left: 14, right: 9),
                        title: Text(
                          "Score acqui par jour",
                          style: TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        trailing: Icon(
                          Icons.bar_chart,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //3EME BOX
          Container(
            margin: EdgeInsets.symmetric(horizontal: 35),
            width: double.infinity,
            height: 125,
            decoration: BoxDecoration(
              color: Color.fromARGB(40, 61, 184, 110),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(top: 20, right: 60, bottom: 20),
                        child: Text(
                          "Points totaux",
                          style: TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.left,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      width: 200,
                      height: 40,
                      child: Text(
                        "Vous avez collecté jusqu'à présent 60% du maximum de points, bravo !",
                        style: (TextStyle(fontFamily: 'Poppins', fontSize: 10)),
                      ),
                    ),
                  ],
                ),
                //le cercle
                Text("       le cercle"),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 1),
            width: 180,
            height: 130,
            child: Image(
              image: AssetImage('images/stat.png'),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    ];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBFFDB),
      body: pages(listTags(tags)).elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff3DB86E),
          unselectedItemColor: Color(0xff8CB49C),
          selectedLabelStyle: TextStyle(fontFamily: 'Rubik'),
          currentIndex: selectedindex,
          backgroundColor: Color(0xFFEBFFDB),
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                label: "Conseils", icon: Icon(Icons.contact_support_sharp)),
            BottomNavigationBarItem(
                label: "Recettes", icon: Icon(Icons.restaurant_menu_outlined)),
            BottomNavigationBarItem(
                label: "Statistiques", icon: Icon(Icons.bar_chart)),
          ]),
    );
  }
  listTags(List<String> tags){
    return Container(
      width: double.infinity,
      //padding: EdgeInsets.only(bottom: 30), //CHECKED
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 42,
          ),
          Row(
            children: List<Widget>.generate(tags.length, (int index){
              return Container(
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Color(0xffD1F5CA),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: (tags[index].length)*12 + 10,
                // height: 56,
                child: Center(
                  child: Text(
                    tags[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              );
            }),
          ),
          Container(
            width: 42,
          ),
        ],
      ),
    );
  }
}
