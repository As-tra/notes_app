import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_offline/cubits/addNoteCubit/add_note_cubit.dart';
import 'package:note_offline/cubits/notesCubit/notes_cubit.dart';
import 'package:note_offline/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSucess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.of(context).pop();
          } else if (state is AddNoteFailure) {
            debugPrint(state.message);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 32,
                bottom: MediaQuery.of(context).viewInsets.bottom + 32,
              ),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
