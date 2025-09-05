import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gharsewa/themes/colors.dart';

class GSTextField extends StatefulWidget {
  final String? placeholder;
  final TextEditingController? value;
  final bool masking;
  final TextInputType? keyboardType;
  const GSTextField({
    super.key,
    this.placeholder,
    this.value,
    this.keyboardType,
    this.masking = false,
  });

  @override
  State<GSTextField> createState() => _GSTextFieldState();
}

class _GSTextFieldState extends State<GSTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: TextField(
        keyboardType: widget.keyboardType,
        controller: widget.value,
        obscureText: widget.masking,
        obscuringCharacter: "•",
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
          labelText: widget.placeholder,
          labelStyle: TextStyle(color: Colors.grey.shade600, fontSize: 14),
          filled: true,
          fillColor: GSColors().white,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 12,
          ),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: GSColors().offwhite),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: GSColors().green, width: 2),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
        ),
      ),
    );
  }
}
