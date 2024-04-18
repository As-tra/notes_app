import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_offline/cubits/notesCubit/notes_cubit.dart';
import 'package:note_offline/models/note_model.dart';
import 'package:note_offline/widgets/custom_app_bar.dart';
import 'package:note_offline/widgets/empty_list_view.dart';
import 'package:note_offline/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
        child: Column(
          children: [
            const CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<NotesCubit, NotesState>(
              builder: (context, state) {
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                List<NoteModal> notes =
                    BlocProvider.of<NotesCubit>(context).notes;
                return Expanded(
                  child: notes.isEmpty
                      ? const EmptyListView()
                      : NotesListView(notes: notes),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
