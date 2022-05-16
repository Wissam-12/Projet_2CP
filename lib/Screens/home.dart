// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'login.dart';
// import 'accueil.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: StreamBuilder(
//           stream: FirebaseAuth.instance.authStateChanges(),
//      //     builder: (BuildContext context, AsyncSnapshot snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(child: CircularProgressIndicator());
//             } else if (snapshot.hasData) {
//               return Accueil();
//             } else if (snapshot.hasError) {
//               return Center(child: Text('Oups, something went Wrong !'));
//             } else {
//              //return Login();
//             }
//           },
//         ),
//       );
// }
