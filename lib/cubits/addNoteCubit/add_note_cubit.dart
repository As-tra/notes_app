import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_offline/constants.dart';
import 'package:note_offline/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  List months = [
    'jan',
    'feb',
    'mar',
    'apr',
    'may',
    'jun',
    'jul',
    'aug',
    'sep',
    'oct',
    'nov',
    'dec'
  ];

  Future addNote(NoteModal note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModal>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSucess());
    } catch (e) {
      emit(AddNoteFailure(message: e.toString()));
    }
  }
}
