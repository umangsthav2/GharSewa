import 'package:flutter/material.dart';
import 'package:gharsewa/screens/Postings.dart';
import 'package:gharsewa/widgets/GSCard.dart';
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
    final TextEditingController emailValue = TextEditingController();
    final TextEditingController passwordValue = TextEditingController();

    return Scaffold(
      // appBar: GSAppBar(),
      backgroundColor: GSColors().offwhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/assets/images/gharsewa_logo.png", width: 200),
            const SizedBox(height: 100),
            GSTextField(placeholder: "Email", value: emailValue),
            GSTextField(
              placeholder: "Password",
              value: passwordValue,
              masking: true,
            ),
            Container(
              width:double.infinity,
              child: GSButton(
                buttonText: "Login",
                buttonColor: GSColors().green,
                onClick: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Postings())
                  );
                  print("Login Clicked");
                  print((emailValue.text));
                  print((passwordValue.text));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
