import 'package:flutter/material.dart';
import 'package:gharsewa/themes/colors.dart';

class GSTextField extends StatefulWidget
  {
    final String? placeholder;
    bool masking;
    GSTextField({super.key, this.placeholder, this.masking=false});

    @override
    State<GSTextField> createState() => GSTextFieldState();
  }

class GSTextFieldState extends State<GSTextField>
  {

    String? placeholder;
    GSTextFieldState({this.placeholder});

      @override
      Widget build(BuildContext bc)
        {
            return TextField(
              decoration:InputDecoration(
                hintText:widget.placeholder,
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: GSColors().white,
              ),
            obscureText: widget.masking,
            obscuringCharacter:"•",
            );
        }

  }
