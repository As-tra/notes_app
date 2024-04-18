import 'package:flutter/material.dart';
import 'package:note_offline/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  final List notes;
  const NotesListView({
    super.key,
    required this.notes,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: notes.length,
      itemBuilder: (context, index) {
        return NoteItem(
          note: notes[index],
        );
      },
    );
  }
}
