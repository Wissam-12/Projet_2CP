import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'Screens/home.dart';
import '../google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();
  List<String> tags = ["All", "Salades", "Desserts", "Plats Chauds", "Sandwichs"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        body: Container(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      height: 280,
                      child: Center(
                          child: Container(
                        height: 280,
                        width: 280,
                        child: Image.asset("images/LOGO.png"),
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 10,
                      ),
                      child: new TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Color(0XFFFFA450),
                          fontFamily: 'DMsans',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: new InputDecoration(
                          labelText: "Entrez votre nom",
                          labelStyle: TextStyle(
                            fontFamily: 'DMSans',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFFFFA450),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0XFFFFA450),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF6F50),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Center(
                          child: SizedBox(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
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
                                  final provider =
                                      Provider.of<GoogleSignInProvider>(context,
                                          listen: false);
                                  provider.googleLogin();
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
                    ),]
                  ),
          Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.bottomLeft,
              //color: Colors.red,
              child: Image.asset("images/vagues.png")),
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
          ),],
        )),
    );
  }
}
