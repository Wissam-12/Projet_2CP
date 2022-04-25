import 'accueil.dart';
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
                  height: 450,
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
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              const BoxShadow(
                                color: Color(0xFFFF6F50),
                              ),
                              const BoxShadow(
                                color: Color(0XFFFFA450),
                                blurRadius: 10.0,
                                offset: Offset(4, -4),
                              ),
                            ],
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return accueil();
                              }));
                            },
                            child: Text(
                              "C'est parti",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                              ),
                              ),
                          ),
                        ),
                      ),
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
