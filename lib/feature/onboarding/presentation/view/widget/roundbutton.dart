import 'package:flutter/material.dart';

class RoundButtonWithIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const RoundButtonWithIcon({
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: color,
        padding: const EdgeInsets.all(20),
      ),
      child: Icon(
        icon,
        size: 50,
        color: Colors.white, // Adjust the icon color as needed
      ),
    );
  }
}