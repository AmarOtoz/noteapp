import 'package:flutter/material.dart';
import 'package:noteapp/widget/custom_appbar_note_view.dart';
import 'package:noteapp/widget/custom_body_edit_view.dart';

class EditView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomBodyEditView(),
    );
  }
}