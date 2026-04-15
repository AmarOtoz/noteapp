import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/cubits/notes/notes_states.dart';
import 'package:noteapp/model/note_model.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(Noteinital());

  addNote(NoteModel note) async {
    try {
      emit(Noteloading());
      var noteBox = Hive.box<NoteModel>('notes_box');
      await noteBox.add(note);
      emit(NoteSuccess());
    } on Exception catch (ex) {
      emit(NoteFailuer(ex.toString()));
    }
  }
}
