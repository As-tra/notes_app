import 'package:flutter/material.dart';
import 'package:note_offline/views/add_note_bottom_sheet.dart';
import 'package:note_offline/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue.shade300,
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const AddNoteBottomSheet(),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}

