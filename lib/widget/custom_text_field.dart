import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.hint, required this.maxline,this.onsaved});
  int maxline;
  String hint;
  void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Feild is Empty';
        } else {
          return null;
        }
      },
      maxLines: maxline,
      decoration: InputDecoration(
        border: outLineBorder(),
        enabledBorder: outLineBorder(),
        hintText: hint,
        hintStyle: TextStyle(fontSize: 20),
      ),
    );
  }

  OutlineInputBorder outLineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
