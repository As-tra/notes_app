import 'package:flutter/material.dart';
import 'package:note_offline/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int numOfLines;
  final String? initialValue;
  final void Function(String?)? onsaved;
  final void Function(String)? onchanged;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.numOfLines = 1,
    this.onsaved,
    this.onchanged,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onSaved: onsaved,
      onChanged: onchanged,
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
