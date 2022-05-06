import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'home.dart';
import '../google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();
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

// class _LoginState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       child: GridView(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 1,
//               crossAxisSpacing: 0,
//               mainAxisSpacing: 0,
//               childAspectRatio: (0.22)),
//           children: [
//             Stack(
//               children: [
//                 Image.asset("images/F1.png"),
//                 Container(
//                   margin: EdgeInsets.only(left: 240, top: 180),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(left: 270, top: 110),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //*************************** */
//                 Container(
//                   margin: EdgeInsets.only(left: 200, top: 300),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 150, top: 190),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 3000, top: 350),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 70, top: 238),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 115, top: 290),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 250, top: 350),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 264, top: 420),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 220, top: 580),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 199, top: 480),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 115, top: 480),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 170, top: 535),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 265, top: 650),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 239, top: 720),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 150, top: 720),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 100, top: 790),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 155, top: 865),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 159, top: 955),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 109, top: 1017),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 //********************* */
//                 Container(
//                   margin: EdgeInsets.only(left: 65, top: 1080),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//                 //********************* */
//                 // jsp pq ca marche pas
//                 Container(
//                   margin: EdgeInsets.only(left: 195, top: 1100),
//                   child: CircleAvatar(
//                     radius: 28,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.group,
//                         // color: Colors.transparent,
//                         color: Colors.red,

//                         size: 32,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return accueil      ();
//                         }));
//                       },
//                     ),
//                     backgroundColor: Colors.transparent,
//                   ),
//                 ),
//                 //********************* */
//               ],
//             )
//           ]),
//     ));
//   }
// }
