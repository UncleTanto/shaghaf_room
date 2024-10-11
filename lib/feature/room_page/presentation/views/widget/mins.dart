import 'package:flutter/material.dart';

class minsandhours extends StatelessWidget {
  const minsandhours({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(child:
    Text(index<10?'0'+index.toString():index.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)

    );
  }
}

class AmPm extends StatelessWidget {
  const AmPm({super.key, required this.isAm});
  final bool isAm;
  @override
  Widget build(BuildContext context) {
    return Container(child:
    Text(isAm==true?'Am':"Pm",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)

    );
  }
}

