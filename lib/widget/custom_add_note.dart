import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/cubits/notes/notes_states.dart';
import 'package:noteapp/widget/custom_add_botton.dart';
import 'package:noteapp/widget/custom_text_field.dart';

class CustomAddNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      listener: (context, state) {
        if (state is NoteSuccess) {
          Navigator.pop(context);
        } else if (state is NoteFailuer) {
          
        }
      },
      builder: (context, state) {
        return  ModalProgressHUD(
          inAsyncCall: state is NoteFailuer ? true : false,
          child: AddNoteSheet());
      },
    );
  }
}

class AddNoteSheet extends StatelessWidget {
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
