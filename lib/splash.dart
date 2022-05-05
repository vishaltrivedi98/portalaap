// @dart=2.9


import 'package:eglogics_app/login.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';  

class Splash extends StatefulWidget {
  const Splash({ Key key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    login()
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Image.asset(
                  "assets/Splash.png",
                  fit: BoxFit.fitHeight,
                  height: 750.0,
                  // width: 370.0,
                ),
          ],
        )
      );
      
  }
}
