import 'package:flutter/material.dart';
import 'package:gharsewa/screens/DrawerSettings.dart';
import 'package:gharsewa/widgets/GSListTile.dart';
import 'package:gharsewa/widgets/GSUser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State createState() {
    return TestState();
  }
}

class TestState extends State {
  
  List<Widget> dataList  = [];
  
  @override
  Widget build(BuildContext bc) {
    return Scaffold(

      body:Column(
        children: [
          InkWell(
            child:Text("Helloowwwwwwwwwwwwwww"),
            onTap:() async {
                
                final url = Uri.parse("https://jsonplaceholder.typicode.com/users");
                final data = await http.get(url);
                debugPrint(data.body);

                final List<dynamic> parsedData = jsonDecode(data.body);
                
                setState(() {
                  dataList = parsedData.map((item) =>GSListTile(
                    name:item['name'],
                    desc: "${item['address']['street']}, ${item['address']['city']}",
                    img: "lib/assets/images/user1.jpg",
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GSUser(
                            name:"${item['name']}",
                            location:"${item['address']['street']}, ${item['address']['city']}",
                          )
                          )
                        );
                    },
                    
                  )).toList();
                });
            },
          ),
        Column(
          children: dataList,
        ),
        ],
      ),
    );
  }
}