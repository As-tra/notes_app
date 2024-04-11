import 'package:flutter/material.dart';
import 'package:note_offline/views/widgets/custom_app_bar.dart';
import 'package:note_offline/views/widgets/custom_note_item.dart';

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
        children: [
          const CustomAppBar(),
          NoteItem(
            title: 'Flutter tips',
            text: 'Build your Career with Tharwat Samy',
            date: 'May 21,2022',
            color: Colors.deepPurple.shade200,
          ),
          NoteItem(
            title: 'Flutter tips',
            text: 'Build your Career with Tharwat Samy',
            date: 'May 21,2022',
            color: Colors.green.shade200,
          ),
          NoteItem(
            title: 'Flutter tips',
            text: 'Build your Career with Tharwat Samy',
            date: 'May 21,2022',
            color: Colors.orange.shade200,
          ),
        ],
      ),
    );
  }
}
