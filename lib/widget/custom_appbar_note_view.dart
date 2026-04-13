import 'package:flutter/material.dart';
import 'package:noteapp/widget/Custom_search_icon.dart';

class CustomAppbarNoteView extends StatelessWidget {
  String title;
  IconData icon;
  CustomAppbarNoteView({required this.title,required this.icon});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 32)),
        Spacer(),
        CustomSearchIcon(icon: icon,),
      ],
    );
  }
}
