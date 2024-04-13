import 'package:flutter/material.dart';
import 'package:note_offline/widgets/custom_app_bar.dart';
import 'package:note_offline/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 20,
          ),
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
        ],
      ),
    );
  }
}
