import 'package:flutter/material.dart';

class TextFormTempl extends StatelessWidget {
   const TextFormTempl({super.key,required this.textInside, required this.iconInside,required this.showPassword});
  final String textInside;
  final IconData iconInside;
  final bool showPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: showPassword,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          prefixIcon: Icon(iconInside,size: 20,),
          hintText: textInside,
          iconColor: Colors.black,
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding: const EdgeInsets.symmetric(vertical: 5), // Adjust height
        ),
      ),
    );
  }
}
