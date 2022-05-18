import 'package:flutter/material.dart';
import '../Model/listRecettes.dart';
import 'detailsRecette.dart';

class RecetteCarte extends StatefulWidget {
    final RecetteModel exRecettes;

    const RecetteCarte(this.exRecettes);

    @override
    State<RecetteCarte> createState() => _RecetteCarteState();
}

class _RecetteCarteState extends State<RecetteCarte>{
    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                   return DetailsRecette(this.widget.exRecettes);
                }));
            },
            child: Container(
                padding: EdgeInsets.only(top: 40),
                margin: EdgeInsets.only(left: 10, bottom: 20),
                decoration: BoxDecoration(
                    color: this.widget.exRecettes.coleur,
                    borderRadius: BorderRadius.circular(16),
                ),
                width: 150,
                height: 223,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(
                        height: 86,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    this.widget.exRecettes.image!,
                                ),
                            ),
                        ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 10, bottom: 8, left: 8, right: 8),
                        child: Text(
                        this.widget.exRecettes.titre!,
                        textAlign: TextAlign.center,
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
                                //alignment: Alignment.center,
                                child: Text(
                                this.widget.exRecettes.duree! + "    ",
                                style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 12,
                                ),
                                ),
                            ),
                            Container(
                                child: Icon(
                                Icons.access_time_filled,
                                size: 17,
                                ),
                            ),
                        ],
                    )
                    ],
                )
            ),
        );
    }
}