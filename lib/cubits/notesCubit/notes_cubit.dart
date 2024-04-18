import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_offline/constants.dart';
import 'package:note_offline/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModal> notes = [];
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModal>(kNotesBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
