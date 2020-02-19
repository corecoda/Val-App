import 'package:flutter/material.dart';
import 'package:val_app/Screen/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
    fontFamily: "TimesNewRoman",
    backgroundColor: Colors.white,
    primaryColor: Colors.white,
    accentColor:  Color(0xff06d6a7),
    cursorColor: Color(0xff06d6a7),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        title: TextStyle(
          fontFamily: "TimesNewRoman",
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  ),
      home: Splash(),
    );
  }
}