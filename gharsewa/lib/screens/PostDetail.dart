import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gharsewa/widgets/GSAppBar.dart';
import 'package:gharsewa/widgets/GSListTile.dart';
import 'package:gharsewa/widgets/GSUser.dart';

class PostDetail extends StatefulWidget {
  final int id;

  const PostDetail({super.key, required this.id});
  @override
  State<PostDetail> createState() {
    return DetailState();
  }
}

class DetailState extends State<PostDetail> {
  @override
  Widget build(BuildContext bc) {
    return Scaffold(
      appBar: GSAppBar(),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 300,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
            ),
            items: [
              Image.network(fit: BoxFit.cover, 'lib/assets/images/OliBaa.jpg'),
              Image.network(fit: BoxFit.cover, 'lib/assets/images/Madhav.jpg'),
              Image.network(
                fit: BoxFit.cover,
                'lib/assets/images/Prachanda.jpg',
              ),
              Image.network(fit: BoxFit.cover, 'lib/assets/images/Rabi.jpg'),
            ],
          ),
          InkWell(
            child: GSListTile(
              name: "Mangale Dhangale",
              desc: "Mid-Baneshwor, Kathmandu",
              img: "lib/assets/images/user1.jpg",
            ),
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => GSUser(),)
                );

            },
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Post ID: ${widget.id}"),
                        Text(
                          "Dammi Room Khali xa haii solti",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              Icon(Icons.call),
                              InkWell(
                                child: Text("+977 9812345678"),
                                onTap: () {
                                  debugPrint("Mobile CALL API to that Nummer");
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              Icon(Icons.location_on),
                              InkWell(
                                child: Text("Shantinagar, Kathmandu"),
                                onTap: () {
                                  debugPrint(
                                    "Search postings based on the location clicked",
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
