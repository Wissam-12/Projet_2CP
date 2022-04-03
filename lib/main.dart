import 'package:flutter/material.dart';
import 'package:projet/auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEBFFDB),
      ),
      home: Login(),
      routes: {"Login": (context) => Login()},
    );
  }
}
