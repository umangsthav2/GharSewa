import 'package:flutter/material.dart';
import 'package:gharsewa/screens/LoginScreen.dart';

import 'package:gharsewa/widgets/GSListTile.dart';
import 'package:gharsewa/widgets/GSUser.dart';

class GSCard extends StatefulWidget {
  final String? title;
  final String? desc;
  final String? location;
  final String? img;
  final int? id;
  final VoidCallback? viewPost;

  const GSCard({super.key, this.id, this.title, this.desc, this.location, this.img, this.viewPost});

  @override
  State<GSCard> createState() {
    return CardState();
  }
}

class CardState extends State<GSCard> {
  @override
  Widget build(BuildContext bc) {
    return Column(
      children: [
       Container(
        width: double.infinity,
        child: Expanded(
          flex: 2,
          child: Card(
            clipBehavior: Clip.antiAlias,
            shadowColor: Colors.green,
            elevation: 2,
            child: Column(
              children: [
                GSListTile(
              name:"KP Sharma Oli",
              desc:"Chyasal, Kathmandu",
              img:"lib/assets/images/user1.jpg",
              onClick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GSUser() 
                  )
                );
              },
            ),
                Container(
                  width: double.infinity,
                  height: 250,
                  child: Image.network(fit: BoxFit.cover,"${widget.img}"),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Post ID: ${widget.id}"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                Text(
                                  "${widget.title}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text("${widget.desc}"),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Expanded(
                            flex: 3,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(Icons.location_on),
                                Text("${widget.location}"),
                                Spacer(),
                                InkWell(
                                  child: Text("View More"),
                                  onTap: widget.viewPost,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      ],
    );
  }
}
