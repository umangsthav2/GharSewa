import 'package:flutter/material.dart';
import 'package:gharsewa/widgets/GSAppBar.dart';
import 'package:gharsewa/widgets/GSListTile.dart';

import 'package:gharsewa/screens/DrawerSettings.dart';

class UserScreen extends StatefulWidget {
  final String? name;
  final String? location;

  const UserScreen({super.key, this.name, this.location});

  @override
  State<UserScreen> createState() {
    return UserState();
  }
}

class UserState extends State<UserScreen> {
  @override
  Widget build(BuildContext bc) {
    return Scaffold(
      appBar: GSAppBar(),
      drawer: UserProfile(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Container(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  maxRadius: 75,
                  backgroundImage: AssetImage('lib/assets/images/user1.jpg'),
                ),
                Text(
                  "${widget.name}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                Text("${widget.location}", style: TextStyle(fontSize: 22)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 7.5, bottom: 15),
                    child: Text(
                      "User Listings",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: GSListTile(
                            name: "Land on Kathmandu",
                            desc: "Anamnagar, Kathmandu",
                            img: "lib/assets/images/user1.jpg",
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: GSListTile(
                            name: "Land on Kathmandu",
                            desc: "Anamnagar, Kathmandu",
                            img: "lib/assets/images/user1.jpg",
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: GSListTile(
                            name: "Land on Kathmandu",
                            desc: "Anamnagar, Kathmandu",
                            img: "lib/assets/images/user1.jpg",
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: GSListTile(
                            name: "Land on Kathmandu",
                            desc: "Anamnagar, Kathmandu",
                            img: "lib/assets/images/user1.jpg",
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: GSListTile(
                            name: "Land on Kathmandu",
                            desc: "Anamnagar, Kathmandu",
                            img: "lib/assets/images/user1.jpg",
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: GSListTile(
                            name: "Land on Kathmandu",
                            desc: "Anamnagar, Kathmandu",
                            img: "lib/assets/images/user1.jpg",
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: GSListTile(
                            name: "Land on Kathmandu",
                            desc: "Anamnagar, Kathmandu",
                            img: "lib/assets/images/user1.jpg",
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: GSListTile(
                            name: "Land on Kathmandu",
                            desc: "Anamnagar, Kathmandu",
                            img: "lib/assets/images/user1.jpg",
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: GSListTile(
                            name: "Land on Kathmandu",
                            desc: "Anamnagar, Kathmandu",
                            img: "lib/assets/images/user1.jpg",
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: GSListTile(
                            name: "Land on Kathmandu",
                            desc: "Anamnagar, Kathmandu",
                            img: "lib/assets/images/user1.jpg",
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: GSListTile(
                            name: "Land on Kathmandu",
                            desc: "Anamnagar, Kathmandu",
                            img: "lib/assets/images/user1.jpg",
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: GSListTile(
                            name: "Land on Kathmandu",
                            desc: "Anamnagar, Kathmandu",
                            img: "lib/assets/images/user1.jpg",
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
    );
  }
}
