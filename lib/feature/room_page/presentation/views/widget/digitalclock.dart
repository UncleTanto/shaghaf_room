import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghaf_room/feature/room_page/presentation/views/widget/pmam.dart';
import 'package:shaghaf_room/feature/room_page/presentation/views/widget/timeScrolitem.dart';

class Digitalclock extends StatefulWidget {
  const Digitalclock({super.key});

  @override
  State<Digitalclock> createState() => _DigitalclockState();
}

class _DigitalclockState extends State<Digitalclock> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(width: 70.w,),
        //hours
        timeitem(counter: 12),
        Container(
          alignment: Alignment.center,
          width: 30,
          height: 50,child: Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
        //mins
        timeitem(counter: 60),
        pmam(),
      ],
    );
  }
}
