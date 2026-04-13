import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  IconData icon;
  CustomSearchIcon({required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Icon(icon, size: 32)),
    );
  }
}
