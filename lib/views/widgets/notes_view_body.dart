import 'package:flutter/material.dart';
import 'package:note_offline/views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: ListView(
        children: const [
          CustomAppBar(),
        ],
      ),
    );
  }
}
