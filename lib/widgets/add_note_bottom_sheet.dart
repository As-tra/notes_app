import 'package:flutter/material.dart';
import 'package:note_offline/widgets/custom_button.dart';
import 'package:note_offline/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: 'content',
              numOfLines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(text: 'Add'),
          ],
        ),
      ),
    );
  }
}
