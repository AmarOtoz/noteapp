import 'package:flutter/material.dart';
import 'package:noteapp/widget/custom_note.dart';

class CustomListview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CustomNote(),
          );
        },
      ),
    );
  }
}
