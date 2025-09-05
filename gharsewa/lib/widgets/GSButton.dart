import 'package:flutter/material.dart';

import '../themes/colors.dart';

class GSButton extends StatefulWidget {
  final VoidCallback? onClick;
  String? buttonText;
  Color? buttonColor;
  GSButton({super.key, this.buttonColor, this.buttonText, this.onClick});

  @override
  State<GSButton> createState() => GSButtonState();
}

class GSButtonState extends State<GSButton> {
  @override
  Widget build(BuildContext bc) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ElevatedButton(
        onPressed: widget.onClick,
      
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.buttonColor,
          padding: EdgeInsets.all(14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          "${widget.buttonText}",
          style: TextStyle(color: GSColors().white,),
        ),
      ),
    );
  }
}
