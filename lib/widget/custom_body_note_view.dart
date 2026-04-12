import 'package:flutter/material.dart';
import 'package:noteapp/widget/custom_appbar_note_view.dart';
import 'package:noteapp/widget/custom_listview.dart';
import 'package:noteapp/widget/custom_note.dart';

class CustomBodyNoteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbarNoteView(),
          Expanded(child: CustomListview()),
        ],
      ),
    );
  }
}
