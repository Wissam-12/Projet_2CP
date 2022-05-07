import 'package:flutter/material.dart';
import '../Model/listConseils.dart';

class ConseilCarte extends StatefulWidget {
    final ConseilModel exconseils;

    const ConseilCarte(this.exconseils);

    @override
    State<ConseilCarte> createState() => _ConseilCarteState();
}

class _ConseilCarteState extends State<ConseilCarte>{
    @override
    Widget build(BuildContext context) {
        return Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 28),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
            color: this.widget.exconseils.coleur!,
            borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
                children: [
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(bottom: 20, top: 5),
                        child: Text(
                            this.widget.exconseils.titre!,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w600
                            ),
                        ),
                    ),
                    Text(
                        this.widget.exconseils.contenu!,
                        style: TextStyle(
                            fontSize: 14, 
                            fontFamily: 'Poppins',
                            wordSpacing: 3,
                        ),
                    ),
                ],
            )
        );
    }
}