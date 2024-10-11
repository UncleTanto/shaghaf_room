import 'package:flutter/material.dart';

import 'mins.dart';

class timeitem extends StatefulWidget {
  const timeitem({super.key, required this.counter});
  final int counter;

  @override
  State<timeitem> createState() => _timeitemState();
}

class _timeitemState extends State<timeitem> {
  int current=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 100,
      child: ListWheelScrollView.useDelegate(
          onSelectedItemChanged: (value){
            setState(() {
              current=value;
            });
          },
          itemExtent: 40,
          perspective: .01,
          diameterRatio: 1.4,
          physics: FixedExtentScrollPhysics(),
          childDelegate: ListWheelChildBuilderDelegate(
              childCount: widget.counter,
              builder: (context,index){
                return  minsandhours(index: index+1);
              }
          )),
    );
  }
}
