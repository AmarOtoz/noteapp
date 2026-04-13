import 'package:flutter/material.dart';
import 'package:noteapp/widget/custom_add_botton.dart';
import 'package:noteapp/widget/custom_text_field.dart';

class CustomAddNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CustomTextField(hint: 'title', maxline: 1),
              SizedBox(height: 20),
              CustomTextField(hint: 'content', maxline: 5),
              SizedBox(height: 20),
              CustomAddBotton(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
