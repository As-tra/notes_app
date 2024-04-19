import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_offline/cubits/notesCubit/notes_cubit.dart';
import 'package:note_offline/models/note_model.dart';
import 'package:note_offline/widgets/custom_app_bar.dart';
import 'package:note_offline/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModal note;
  const EditNoteViewBody({
    super.key,
    required this.note,
  });

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              // logic here to modify the note
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              // triger the notesCubit to show updates
              BlocProvider.of<NotesCubit>(context).updateNotes();
              // close the edit view
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onchanged: (value) {
              title = value;
            },
            hintText: 'Title',
            initialValue: widget.note.title,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onchanged: (value) {
              content = value;
            },
            hintText: 'content',
            numOfLines: 5,
            initialValue: widget.note.content,
          ),
        ],
      ),
    );
  }
}
