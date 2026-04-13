import 'package:flutter/material.dart';
import 'package:noteapp/widget/custom_appbar_note_view.dart';
import 'package:noteapp/widget/custom_listview.dart';
import 'package:noteapp/widget/custom_text_field.dart';

class CustomBodyEditView extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbarNoteView(title: 'Edit', icon: Icons.check),
        SizedBox(height: 50,),
        CustomTextField(hint: 'title', maxline: 1),
        SizedBox(height: 20,),
        CustomTextField(hint: 'content', maxline: 5),
      ],
    );
  }
}