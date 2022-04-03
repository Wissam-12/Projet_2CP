import 'package:projet/accueil.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 500,
                  child: Center(
                      child: Container(
                    height: 280,
                    width: 280,
                    child: Image.asset("images/LOGO.png"),
                  )),
                ),
                Center(
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Center(
                      child: SizedBox(
                          height: 74,
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return accueil();
                              }));
                            },
                            child: Text("C'est parti"),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              primary: Color(0XFFFFA450),
                              textStyle: TextStyle(
                                  fontFamily: 'Rubik-ExtraBold',
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ),
                ),
              ]),
          Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.bottomLeft,
              //color: Colors.red,
              child: Image.asset("images/imm.png")),
          Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.topRight,
              child: Image.asset("images/Vector.png")),
          Container(
            width: 400,
            height: 200,
            alignment: Alignment.bottomRight,
            child: Image.asset("images/pic.png"),
          ),
        ],
      ),
    ));
  }
}
