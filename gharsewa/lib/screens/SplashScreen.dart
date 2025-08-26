import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gharsewa/screens/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext bc) {
    return Container(
      width: 200,
      child: Image.asset("lib/assets/images/gharsewa_logo.png"),
    );
  }
}
