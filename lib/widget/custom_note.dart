import 'package:flutter/material.dart';

class CustomNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow[300],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter tips',
              style: TextStyle(fontSize: 28, color: Colors.black ,fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Build your career with amar otoz',
              style: TextStyle(color: Colors.black.withOpacity(.3)),
            ),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete,size: 24,color: Colors.black,)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text('creat At 4/12/2026 2:55 pm',style: TextStyle(color:Colors.black.withOpacity(.3) ),),
          ),
        ],
      ),
    );
  }
}
