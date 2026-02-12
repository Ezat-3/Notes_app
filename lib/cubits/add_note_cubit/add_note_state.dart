class AddNoteState {}

class AddNoteInitialState extends AddNoteState {}

class AddNoteLoadingState extends AddNoteState {}

class AddNoteSuccessState extends AddNoteState {}

class AddNoteFailurState extends AddNoteState {
  final String errorMessage;

  AddNoteFailurState(this.errorMessage);
}
