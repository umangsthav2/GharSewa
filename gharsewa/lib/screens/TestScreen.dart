import 'package:flutter/material.dart';

import 'package:gharsewa/widgets/GSAppBar.dart';
import 'package:gharsewa/widgets/GSButton.dart';
import 'package:gharsewa/widgets/GSListTile.dart';
import 'package:gharsewa/widgets/GSTextField.dart';
import 'package:gharsewa/widgets/GSCard.dart';
import 'package:gharsewa/widgets/GSUser.dart';

class Testscreen extends StatefulWidget {
  const Testscreen({super.key});
  @override
  State createState() {
    return TestState();
  }
}

class TestState extends State {
  @override
  Widget build(BuildContext bc) {
    return Scaffold(
      body:GSUser(),
    );
  }
}
