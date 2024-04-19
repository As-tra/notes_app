import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_offline/cubits/notesCubit/notes_cubit.dart';
import 'package:note_offline/models/note_model.dart';
import 'package:note_offline/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  final NoteModal note;
  const NoteItem({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => EditNoteView(note: note),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  note.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const FaIcon(
                  FontAwesomeIcons.trash,
                  size: 24,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                note.content,
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  note.date,
                  style: const TextStyle(
                    color: Colors.black38,
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
