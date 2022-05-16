import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import '../Model/listConseils.dart';

class Circ {
  double points;
  String s;
  Circ(this.points, this.s);
}

// ON DOIT AVOIR UN OBJET USER QUI A SCORE COMME ATTRIBUT
// JE SUPPOSE QUE SCORE EST UNE VARIABLE GLOBALE ET C LE SCORE DE L UTILISATEUR
final int Score = 9000;
final int maxPoints = 10000;
double score_en100 = Score * 100 / maxPoints;
dynamic getChartData() {
  List<Circ> chartData = <Circ>[
    Circ(0.1, "m"),
    Circ(0.1, "m"),
    Circ(score_en100, "j")
  ];
  return chartData;
}
class ConseilsEP extends StatefulWidget {
  ConseilsEP({Key? key}) : super(key: key);

  @override
  State<ConseilsEP> createState() => _ConseilsEPState();
}

class _ConseilsEPState extends State<ConseilsEP> {
  List<String> tags = [
    "All",
    "Salades",
    "Desserts",
    "Plats Chauds",
    "Sandwichs"
  ];
  List<Color> colTags = [
    Color(0xff3DB86E),
    Color(0xffD1F5CA),
    Color(0xffD1F5CA),
    Color(0xffD1F5CA),
    Color(0xffD1F5CA)
  ];
  String selectedTag = "All";
  int selectedindex = 0;
  List<Widget> pages(Widget lsTags) {
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
            //  child: RecetteModel.afficher(selected()),
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
                          style:
                              (TextStyle(fontFamily: 'Poppins', fontSize: 8)),
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
                          style:
                              (TextStyle(fontFamily: 'Poppins', fontSize: 10)),
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
                        padding:
                            EdgeInsets.only(top: 20, right: 60, bottom: 20),
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
                    Container(
                      height: 120,
                      width: 130,
                      child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(
                          isVisible: false,
                          labelStyle: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w500),
                        ),
                        primaryYAxis: NumericAxis(isVisible: false),
                        plotAreaBorderWidth: 0,
                        isTransposed: false,
                        palette: <Color>[Color(0xffFF6F50)],
                        series: <ChartSeries>[
                          ColumnSeries<Jour, String>(
                            dataSource: getColumnData(),
                            xValueMapper: (Jour jour, _) => jour.jour,
                            yValueMapper: (Jour jour, _) => jour.points,
                          )
                          // dataLabelSettings:
                          //   DataLabelSettings(isVisible: true)),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        'D   L   M   M  J   V   S ',
                        style: TextStyle(fontSize: 12),
                      ),
                    )
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
                      "Vous avez collecté jusqu'à présent ${score_en100}% du maximum de points, bravo !",
                      style: (TextStyle(fontFamily: 'Poppins', fontSize: 10)),
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                width: 100,
                child: SfCircularChart(
                    borderWidth: 0.05,
                    margin: EdgeInsets.all(5),
                    palette: <Color>[
                      Color(0xff3DB86E)
                    ],
                    annotations: <CircularChartAnnotation>[
                      CircularChartAnnotation(
                        widget: Container(
                          child: Text('${score_en100}% ',
                              style: TextStyle(
                                  color: Color(0xff8CB49C),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11)),
                        ),
                      )
                    ],
                    series: <CircularSeries>[
                      // Renders radial bar chart

                      RadialBarSeries<Circ, String>(
                          useSeriesColor: true,
                          trackOpacity: 0.3,
                          dataSource: getChartData(),
                          maximumValue: 100,
                          xValueMapper: (Circ data, _) => data.s,
                          yValueMapper: (Circ data, _) => data.points,
                          cornerStyle: CornerStyle.bothCurve)
                    ]),
              ),
            ],
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
      body: pages(listTags(tags, colTags)).elementAt(selectedindex),
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

  selected() {
    return selectedTag;
  }

  listTags(List<String> tags, List<Color> coleurs) {
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
            children: List<Widget>.generate(tags.length, (int index) {
              return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTag = tags[index];
                      for (var i = 0; i < tags.length; i++) {
                        if (i == index) {
                          coleurs[index] = Color(0xff3DB86E);
                        } else {
                          coleurs[i] = Color(0xffD1F5CA);
                        }
                      }
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: coleurs[index],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width: (tags[index].length) * 12 + 10,
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
                  ));
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

class Jour {
  String jour;
  double points;
  Jour(this.jour, this.points);
}

dynamic getColumnData() {
  List<Jour> columnData = <Jour>[
    Jour("D", 200),
    Jour("L", 210),
    Jour("Ma", 300),
    Jour("Me", 102),
    Jour("J", 100),
    Jour("V", 130),
    Jour("S", 150)
  ];
  return columnData;
}
