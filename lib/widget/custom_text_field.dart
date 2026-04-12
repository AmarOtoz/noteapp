import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.hint, required this.maxline});
  int maxline;
  String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
