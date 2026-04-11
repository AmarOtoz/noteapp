import 'package:flutter/material.dart';
import 'package:noteapp/view/notes_view.dart';
void main() {
  runApp(NoteApp());
}
class NoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: NotesView(),
    );
  }
}
