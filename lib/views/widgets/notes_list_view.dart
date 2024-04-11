import 'package:flutter/material.dart';
import 'package:note_offline/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return NoteItem(
          title: 'Flutter tips',
          text: 'Build your Career with Tharwat Samy',
          date: 'May 21,2022',
          color: Colors.orange.shade200,
        );
      },
    );
  }
}
