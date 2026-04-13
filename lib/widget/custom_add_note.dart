import 'package:flutter/material.dart';
import 'package:noteapp/widget/custom_add_botton.dart';
import 'package:noteapp/widget/custom_text_field.dart';

class CustomAddNote extends StatefulWidget {
  @override
  State<CustomAddNote> createState() => _CustomAddNoteState();
}

class _CustomAddNoteState extends State<CustomAddNote> {
  GlobalKey<FormState> fromkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: fromkey,
            child: Column(
              children: [
                CustomTextField(
                  hint: 'title',
                  maxline: 1,
                  onsaved: (value) {
                    title = value;
                  },
                ),
                SizedBox(height: 20),
                CustomTextField(
                  hint: 'content',
                  maxline: 5,
                  onsaved: (value) {
                    subTitle = value;
                  },
                ),
                SizedBox(height: 20),
                CustomAddBotton(
                  ontap: () {
                    if (fromkey.currentState!.validate()) {
                      fromkey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
