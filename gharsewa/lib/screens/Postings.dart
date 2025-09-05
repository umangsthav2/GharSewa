import 'package:flutter/material.dart';
import 'package:gharsewa/screens/DrawerSettings.dart';
import 'package:gharsewa/screens/PostDetail.dart';
import 'package:gharsewa/themes/colors.dart';

import 'package:gharsewa/widgets/GSAppBar.dart';
import 'package:gharsewa/widgets/GSCard.dart';

class Postings extends StatefulWidget {
  const Postings({super.key});
  @override
  State<Postings> createState() {
    return PostingState();
  }
}

class PostingState extends State<Postings> {
  @override
  Widget build(BuildContext bc) {
    return Scaffold(
      appBar: GSAppBar(),
      drawer: UserProfile(),
      backgroundColor: GSColors().offwhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GSCard(
              id: 1,
              title: "Flat Available in Chyasal",
              desc: "All the description about the post",
              location: "Baneshwor, Kathmandu",
              img: "lib/assets/images/OliBaa.jpg",
              viewPost: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostDetail(id: 1)),
                );
              },
            ),
            GSCard(
              id: 2,
              title: "Flat Available in Peris Dada",
              desc: "All the description about the post",
              location: "Baneshwor, Kathmandu",
              img: "lib/assets/images/Prachanda.jpg",
              viewPost: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostDetail(id: 2)),
                );
              },
            ),
            GSCard(
              id: 3,
              title: "Flat Available in Baluwatar",
              desc: "All the description about the post",
              location: "Baneshwor, Kathmandu",
              img: "lib/assets/images/SBD.jpg",
              viewPost: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostDetail(id: 3)),
                );
              },
            ),
            GSCard(
              id: 4,
              title: "Flat Available in AlokNagar",
              desc: "All the description about the post",
              location: "Baneshwor, Kathmandu",
              img: "lib/assets/images/Madhav.jpg",
              viewPost: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostDetail(id: 4)),
                );
              },
            ),
            GSCard(
              id: 5,
              title: "Flat Available in Bansthali ",
              desc: "All the description about the post",
              location: "Baneshwor, Kathmandu",
              img: "lib/assets/images/Rabi.jpg",
              viewPost: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostDetail(id: 5)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
