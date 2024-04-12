import 'package:flutter/material.dart';
import 'package:note_offline/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Title',
          ),
        ],
      ),
    );
  }
}
