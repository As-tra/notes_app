import 'package:flutter/material.dart';
import 'package:note_offline/models/note_model.dart';
import 'package:note_offline/widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  final NoteModal note;
  const EditNoteView({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
