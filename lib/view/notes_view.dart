import 'package:flutter/material.dart';
import 'package:noteapp/widget/custom_add_note.dart';
import 'package:noteapp/widget/custom_body_note_view.dart';

class NotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBodyNoteView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return CustomAddNote();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
