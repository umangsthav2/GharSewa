import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


// import 'package:gharsewa/widgets/GSAppBar.dart';
// import 'package:gharsewa/widgets/GSButton.dart';
// import 'package:gharsewa/widgets/GSListTile.dart';
// import 'package:gharsewa/widgets/GSTextField.dart';
// import 'package:gharsewa/widgets/GSCard.dart';
// import 'package:gharsewa/widgets/GSUser.dart';




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
          
                
                final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
                final data = await http.get(url);
                debugPrint(data.body);

                final List<dynamic> parsedData = jsonDecode(data.body);
                
                setState(() {
                  dataList = parsedData.map((item) =>Text(item['title'])).toList();
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
