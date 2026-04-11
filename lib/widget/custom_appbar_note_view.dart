import 'package:flutter/material.dart';
import 'package:noteapp/widget/Custom_search_icon.dart';

class CustomAppbarNoteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: TextStyle(fontSize: 32)),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}

