import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:gharsewa/screens/LoginScreen.dart';
import 'package:gharsewa/screens/SplashScreen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext bc) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body:SplashScreen(),
      ),

    );
  }
}







void main() {
  runApp(MainApp());
}
