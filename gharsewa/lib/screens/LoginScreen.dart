import 'package:flutter/material.dart';
import 'package:gharsewa/widgets/GSTextField.dart';

import '../widgets/GSAppBar.dart';
import '../widgets/GSButton.dart';
import '../widgets/GSTextField.dart';

import '../themes/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginScreen> {
  @override
  Widget build(BuildContext bc) {
    return Scaffold(
      appBar: GSAppBar(),
      backgroundColor: GSColors().offwhite,
      body: Center(
        child: Column(children: [
          Image.asset("lib/assets/images/gharsewa_logo.png",width:200),
          GSTextField(placeholder: "Email"),
          GSTextField(placeholder: "Password",masking:true),
          GSButton(buttonText:"Login", buttonColor:GSColors().yellow, onClick: () {print("Login Clicked");}),
          ],
        ),
      ),
    );
  }
}
