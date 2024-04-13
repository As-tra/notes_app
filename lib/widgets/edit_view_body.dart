import 'package:flutter/material.dart';
import 'package:note_offline/widgets/custom_app_bar.dart';
import 'package:note_offline/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: Column(
        children: [
          const CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onsaved: (p0) {
              
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onsaved: (p0) {
              
            },
            hintText: 'content',
            numOfLines: 5,
          ),
        ],
      ),
    );
  }
}
