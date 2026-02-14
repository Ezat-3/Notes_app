import 'package:notes_app/models/note_model.dart';

class NotesState {}

class NotesInitialState extends NotesState {}

class NotesSuccessState extends NotesState {
  final List<NoteModel> notes;

  NotesSuccessState(this.notes);
}
