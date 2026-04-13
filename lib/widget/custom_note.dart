import 'package:flutter/material.dart';
import 'package:noteapp/widget/custom_body_edit_view.dart';

class CustomNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CustomBodyEditView();
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow[300],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(
                left: 16,
                top: 12,
                bottom: 12,
                right: 0,
              ),
              title: Text(
                'Flutter tips',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Build your career with amar otoz',
                style: TextStyle(color: Colors.black.withOpacity(.3)),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, size: 24, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                'creat At 4/12/2026 2:55 pm',
                style: TextStyle(color: Colors.black.withOpacity(.3)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
