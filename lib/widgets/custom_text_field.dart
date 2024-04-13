import 'package:flutter/material.dart';
import 'package:note_offline/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int numOfLines;
  final void Function(String?)? onsaved;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.numOfLines = 1,
    required this.onsaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return '* Field is Required';
        } else {
          return null;
        }
      },
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
