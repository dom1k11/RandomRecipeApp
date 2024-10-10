import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton(
      {super.key,
      required this.onPressed,
      required this.color,
      required this.icon});

  final VoidCallback onPressed;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      backgroundColor: color,
      label: Row(
        children: [
          Text("Random Recipe"),
          SizedBox(width: 10),
          Icon(icon),
        ],
      ),
    );
  }
}
