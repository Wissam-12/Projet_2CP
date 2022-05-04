import 'package:flutter/material.dart';

class ConseilCarte extends StatefulWidget {
  const ConseilCarte({Key? key}) : super(key: key);

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
            color: Color.fromARGB(48, 16, 209, 93),
            borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
                children: [
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(bottom: 20, top: 5),
                        child: Text(
                            "La télévision est à bannir",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w600
                            ),
                        ),
                    ),
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .",
                        style: TextStyle(
                            fontSize: 14, 
                            fontFamily: 'Poppins',
                            wordSpacing: 11
                        ),
                    ),
                ],
            )
        );
    }
}