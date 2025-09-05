import 'package:flutter/material.dart';
import 'package:gharsewa/themes/colors.dart';

class UserProfile extends StatefulWidget {
  @override
  State<UserProfile> createState() => ProfileState();
}

class ProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext bc) {
    return Container(
      decoration: BoxDecoration(color: GSColors().yellow),
      width: 300,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            maxRadius: 75,
            backgroundImage: AssetImage('lib/assets/images/user1.jpg'),
          ),
          SizedBox(height: 20),
          Text("Narendra Modi", style: TextStyle(fontSize: 25)),
          InkWell(child: Text("User ID: KTM0001"), onTap: () {},),
          SizedBox(height: 100),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(color: Colors.black),
              ),
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              child: Text("Edit Details"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 208, 208, 208),
                // border: Border.all(color: Colors.black),
              ),
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              child: Text("Create Post"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(color: Colors.black),
              ),
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              child: Text("Edit Post"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 208, 208, 208),
                // border: Border.all(color: Colors.black),
              ),
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              child: Text("Delete Post"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                // border: Border.all(color: Colors.black),
              ),
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              child: Text("Logout"),
            ),
          ),
        ],
      ),
    );
  }
}
