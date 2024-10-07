import 'package:flutter/material.dart';
class ListsWidget extends StatelessWidget {
  const ListsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){},
        child: Icon(Icons.format_list_bulleted,color: Colors.white,size: 24,))
    ;
  }
}
