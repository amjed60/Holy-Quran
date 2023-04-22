import 'package:flutter/material.dart';
import 'package:quran/screen/SplashScreen.dart';
import 'package:quran/screen/home.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          'home': (context) => Home(),
        },
        debugShowCheckedModeBanner: false,
        //showSemanticsDebugger:false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          primaryColor: Colors.green,
        ),
        home: SplashScreen());
  }
}
