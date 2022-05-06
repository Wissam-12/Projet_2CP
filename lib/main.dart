import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:projet/Screens/puzzle.dart';
import 'package:provider/provider.dart';
import 'google_sign_in.dart';
import 'package:projet/Screens/map.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: new ThemeData(
              scaffoldBackgroundColor: Color(0xFFEBFFDB),
              appBarTheme: AppBarTheme()),
          home: map(),

          // routes: {"Login": (context) => Login()},
        ),
      );
}
