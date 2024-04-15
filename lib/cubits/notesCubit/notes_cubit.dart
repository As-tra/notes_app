import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_offline/constants.dart';
import 'package:note_offline/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModal>(kNotesBox);
      emit(
        ShowNoteSucess(
          notes: notesBox.values.toList(),
        ),
      );
    } catch (e) {
      emit(ShowNoteFailure(message: e.toString()));
    }
  }
}
