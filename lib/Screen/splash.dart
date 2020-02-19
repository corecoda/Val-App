import 'dart:async';

import 'package:flutter/material.dart';
import 'package:val_app/Screen/home.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  var timeout = const Duration(seconds: 2);
  var ms = const Duration(milliseconds: 1);

  bool gone = false;

  startTimeout() {
    return new Timer(Duration(seconds: 3), handleTimeout);
  }


  void handleTimeout() {
    changeScreen();
  }

  changeScreen() async {
    Navigator.pushReplacement(
      context,
     MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
  }

  @override
  void initState() {
    super.initState();
    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
//        mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                    width: 300.0,
                    height: 300.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/heart.gif'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(75.0),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
