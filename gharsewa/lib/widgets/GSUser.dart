import 'package:flutter/material.dart';
import 'package:gharsewa/widgets/GSListTile.dart';

class GSUser extends StatefulWidget {
  const GSUser({super.key});

  @override
  State<GSUser> createState() {
    return UserState();
  }
}

class UserState extends State<GSUser> {
  @override
  Widget build(BuildContext bc) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Container(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue, maxRadius: 150,
                backgroundImage: AssetImage('lib/assets/images/user1.jpg'),
                ),
              Text(
                "Narendra Modi",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
              ),
              Text("Kapilwastu, Lumbini", style: TextStyle(fontSize: 22)),
              Align(alignment: Alignment.centerLeft,
              child:Padding(
                padding:EdgeInsets.only(top:50, bottom:15),
                child:Text("User Listings", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
              ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      
                      InkWell( onTap: () {}, child:GSListTile(name: "Land on Kathmandu", desc:"Anamnagar, Kathmandu", ),),
                      InkWell( onTap: () {}, child:GSListTile(name: "Land on Kathmandu", desc:"Anamnagar, Kathmandu", ),),
                      InkWell( onTap: () {}, child:GSListTile(name: "Land on Kathmandu", desc:"Anamnagar, Kathmandu", ),),
                      InkWell( onTap: () {}, child:GSListTile(name: "Land on Kathmandu", desc:"Anamnagar, Kathmandu", ),),
                      InkWell( onTap: () {}, child:GSListTile(name: "Land on Kathmandu", desc:"Anamnagar, Kathmandu", ),),
                      InkWell( onTap: () {}, child:GSListTile(name: "Land on Kathmandu", desc:"Anamnagar, Kathmandu", ),),
                      InkWell( onTap: () {}, child:GSListTile(name: "Land on Kathmandu", desc:"Anamnagar, Kathmandu", ),),
                      InkWell( onTap: () {}, child:GSListTile(name: "Land on Kathmandu", desc:"Anamnagar, Kathmandu", ),),
                      InkWell( onTap: () {}, child:GSListTile(name: "Land on Kathmandu", desc:"Anamnagar, Kathmandu", ),),
                      InkWell( onTap: () {}, child:GSListTile(name: "Land on Kathmandu", desc:"Anamnagar, Kathmandu", ),),
                      InkWell( onTap: () {}, child:GSListTile(name: "Land on Kathmandu", desc:"Anamnagar, Kathmandu", ),),
                      InkWell( onTap: () {}, child:GSListTile(name: "Land on Kathmandu", desc:"Anamnagar, Kathmandu", ),),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
