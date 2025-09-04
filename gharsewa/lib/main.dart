import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:gharsewa/screens/LoginScreen.dart';
import 'package:gharsewa/screens/PostDetail.dart';
import 'package:gharsewa/screens/SplashScreen.dart';
import 'package:gharsewa/screens/TestScreen.dart';
import 'package:gharsewa/screens/DrawerSettings.dart';

import 'package:gharsewa/themes/colors.dart';
import 'package:gharsewa/widgets/GSAppBar.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext bc) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: GSColors().green),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
void main() {
  runApp(MainApp());
}