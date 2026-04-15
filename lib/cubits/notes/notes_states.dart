abstract class NotesStates {}

class Noteinital extends NotesStates {}

class Noteloading extends NotesStates {}

class NoteSuccess extends NotesStates {}

class NoteFailuer extends NotesStates {
  String errorMessage;
  NoteFailuer(this.errorMessage);
}
