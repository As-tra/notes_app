import 'package:flutter/material.dart';
import 'package:note_offline/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int numOfLines;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.numOfLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: numOfLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
