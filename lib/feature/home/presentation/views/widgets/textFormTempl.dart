import 'package:flutter/material.dart';

class TextFormTempl extends StatelessWidget {
   const TextFormTempl({super.key,required this.textInside, required this.iconInside});
  final String textInside;
  final IconData iconInside;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          prefixIcon: Icon(iconInside),
          hintText: textInside,
          iconColor: Colors.black,
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding: const EdgeInsets.symmetric(vertical: 10), // Adjust height
        ),
      ),
    );
  }
}
