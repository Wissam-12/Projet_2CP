import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projet/Screens/maphig.dart';
import 'package:provider/provider.dart';
import 'google_sign_in.dart';
import 'Screens/notice.dart';
import 'Screens/soundButton.dart';

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
          home: maphig(),
          // routes: {"Login": (context) => Login()},
        ),
      );
}
