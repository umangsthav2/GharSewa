import 'package:flutter/material.dart';
import 'package:gharsewa/screens/LoginScreen.dart';
import 'package:gharsewa/screens/Postings.dart';
import 'package:gharsewa/themes/colors.dart';
import 'package:gharsewa/widgets/GSAppBar.dart';
import 'package:gharsewa/widgets/GSButton.dart';
import 'package:gharsewa/widgets/GSTextField.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => SignupState();
}

class SignupState extends State<SignupScreen> {
  @override
  Widget build(BuildContext bc) {
    return Scaffold(
      appBar: GSAppBar(),
      backgroundColor: GSColors().offwhite,
      body: Center(
        child: Column(
          children: [
            Image.asset("lib/assets/images/gharsewa_logo.png", width: 150),
            const SizedBox(height: 75),
            Text(
              "Signup",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 10),
            GSTextField(placeholder: "Name (Text)", value: null),
            GSTextField(placeholder: "Gender (Radio)", value: null),
            GSTextField(
              placeholder: "Date of Birth (Date Selection)",
              value: null,
            ),
            GSTextField(placeholder: "Email (Text)", value: null),
            GSTextField(placeholder: "Contact Number (Number)", value: null),
            GSTextField(placeholder: "Location (Data??)", value: null),
            GSTextField(placeholder: "Official Document (File)", value: null),
            Container(
              width: double.infinity,
              child: GSButton(
                buttonText: "Signup",
                buttonColor: GSColors().green,
                onClick: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Postings()),
                  );
                  print("Login Clicked");
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: InkWell(
                child: Text("Back to Login"),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
