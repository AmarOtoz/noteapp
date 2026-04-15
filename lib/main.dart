import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/cubits/notes/notes_cubit.dart';
import 'package:noteapp/model/note_model.dart';
import 'package:noteapp/view/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>('notes_box');
  Hive.registerAdapter(NoteModelAdapter());
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context)=> NotesCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: NotesView(),
      ),
    );
  }
}
