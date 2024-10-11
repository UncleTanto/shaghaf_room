import 'package:flutter/material.dart';

import 'mins.dart';
class pmam extends StatefulWidget {
  const pmam({super.key});

  @override
  State<pmam> createState() => _pmamState();
}

class _pmamState extends State<pmam> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 100,
      child: ListWheelScrollView.useDelegate(itemExtent: 20,
          perspective: .01,
          diameterRatio: 1.4,
          physics: FixedExtentScrollPhysics(),
          childDelegate: ListWheelChildBuilderDelegate(
              childCount: 2,
              builder: (context,index){
                bool isAm;
                index==0?isAm=true:isAm=false;
                return  AmPm(isAm: isAm);
              }
          )),
    );
  }
}
