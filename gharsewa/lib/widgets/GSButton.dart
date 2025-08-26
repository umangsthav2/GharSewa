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
    return ElevatedButton(
      onPressed: widget.onClick,

      style: ElevatedButton.styleFrom(
        backgroundColor: widget.buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        "${widget.buttonText}",
        style: TextStyle(color: GSColors().white),
      ),
    );
  }
}
