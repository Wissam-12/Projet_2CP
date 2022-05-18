import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projet/gestionSon.dart';
import 'package:provider/provider.dart'; 
import 'Screens/home.dart';
import 'Screens/qcu.dart';
import 'Screens/login.dart';
import 'google_sign_in.dart';
import 'Screens/accueil.dart';

void main() async {
  
  player.load("audio/buttonSound.mp3");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  gestionBgm();

  // final player = AudioCache(prefix : 'audio/');
  // player.play('11.mp3');
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  // This widget is the root of your application.
  @override
  void initState() {
    getPref();
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance?.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {

    super.didChangeAppLifecycleState(state);

    if (state== AppLifecycleState.resumed) {playFile();}
    if (state == AppLifecycleState.inactive) {stopFile();}
    if (state == AppLifecycleState.paused) {stopFile();}

  }
  
  
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
  create: (context) => GoogleSignInProvider(),
  child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          scaffoldBackgroundColor: Color(0xFFEBFFDB),
          appBarTheme: AppBarTheme()),
      home: Accueil(),

      // routes: {"Login": (context) => Login()},
    ),
  );
}
