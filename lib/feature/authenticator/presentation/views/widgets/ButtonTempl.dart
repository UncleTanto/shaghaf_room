import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/style.dart';

class ButtonTempl extends StatelessWidget {
  const ButtonTempl({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            //print('Rounded Elevated Button Pressed');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF20473E),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text('$text',style: Styles.comfortaa17,),
        ),
      ),
    );
  }
}
