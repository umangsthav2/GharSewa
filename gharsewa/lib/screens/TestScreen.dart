import 'package:flutter/material.dart';

import 'package:gharsewa/widgets/GSAppBar.dart';
import 'package:gharsewa/widgets/GSButton.dart';
import 'package:gharsewa/widgets/GSListTile.dart';
import 'package:gharsewa/widgets/GSTextField.dart';
import 'package:gharsewa/widgets/GSCard.dart';

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
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GSListTile(
              name:"KP Sharma Oli",
              desc:"Chyasal, Kathmandu",
              img:"lib/assets/images/user1.jpg",
              onClick: () {debugPrint("Hello");},
            ),
            GSCard(
              id: 1,
              title: "Flat Available in Chyasal",
              desc: "All the description about the post",
              location: "Baneshwor, Kathmandu",
              img: "lib/assets/images/OliBaa.jpg",
          ),
            GSCard(
              id: 2,
              title: "Flat Available in Peris Dada",
              desc: "All the description about the post",
              location: "Baneshwor, Kathmandu",
              img: "lib/assets/images/Prachanda.jpg",
          ),
            GSCard(
              id: 3,
              title: "Flat Available in Baluwatar",
              desc: "All the description about the post",
              location: "Baneshwor, Kathmandu",
              img: "lib/assets/images/SBD.jpg",
          ),
            GSCard(
              id: 4,
              title: "Flat Available in AlokNagar",
              desc: "All the description about the post",
              location: "Baneshwor, Kathmandu",
              img: "lib/assets/images/Madhav.jpg",
          ),
            GSCard(
              id: 5,
              title: "Flat Available in Bansthali ",
              desc: "All the description about the post",
              location: "Baneshwor, Kathmandu",
              img: "lib/assets/images/Rabi.jpg",
          ),
          ],
        ),
      ),
    );
  }
}
