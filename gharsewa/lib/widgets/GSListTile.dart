import 'package:flutter/material.dart';

class GSListTile extends StatefulWidget {
  final String? name;
  final String? desc;
  final String? img;
  final VoidCallback? onClick;

  GSListTile({super.key, this.name, this.desc, this.img, this.onClick});

  State<GSListTile> createState() {
    return ListTileState();
  }
}

class ListTileState extends State<GSListTile> {
  Widget build(BuildContext bc) {
    return InkWell(
      onTap: widget.onClick,
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage("${widget.img}"),
          backgroundColor: Colors.blue,
        ),
        title: Text(
          "${widget.name}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text("${widget.desc}", style: TextStyle(fontSize: 12)),
      ),
    );
  }
}
