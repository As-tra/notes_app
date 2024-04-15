part of 'notes_cubit.dart';

sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class ShowNoteLoading extends NotesState {}

final class ShowNoteSucess extends NotesState {
  final List<NoteModal> notes;

  ShowNoteSucess({required this.notes});
}

final class ShowNoteFailure extends NotesState {
  final String message;

  ShowNoteFailure({required this.message});
}
