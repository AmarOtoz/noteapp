import 'package:flutter/material.dart';
import 'package:noteapp/widget/custom_body_note_view.dart';

class NotesView extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: CustomBodyNoteView(),
    );
  }
}