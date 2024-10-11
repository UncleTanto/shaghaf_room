import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/style.dart';
import 'digitalclock.dart';

class mytime extends StatefulWidget {
  const mytime({super.key});

  @override
  State<mytime> createState() => _mytimeState();
}

class _mytimeState extends State<mytime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 251.w,
      alignment: Alignment.topLeft,
      // color: Colors.brown,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("From:",style: Styles.comfortaa16,),
          Digitalclock(),
          SizedBox(height: 16.h,),

          Text("To:",style: Styles.comfortaa16,),
      Digitalclock(),

        ],
      ),
    );
  }
}
