import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/core/widget/ButtonTempl.dart';
import 'package:shaghaf_room/core/widget/smallButton.dart';
import 'package:shaghaf_room/feature/room_page/presentation/views/widget/calenderwidget.dart';
import 'package:shaghaf_room/feature/room_page/presentation/views/widget/pmam.dart';
import 'package:shaghaf_room/feature/room_page/presentation/views/widget/timeScrolitem.dart';
import 'package:shaghaf_room/feature/room_page/presentation/views/widget/timewidget.dart';
import 'package:table_calendar/table_calendar.dart';

class dateandtimeselected extends StatefulWidget {
  const dateandtimeselected({super.key});

  @override
  State<dateandtimeselected> createState() => _dateandtimeselectedState();
}

class _dateandtimeselectedState extends State<dateandtimeselected> {
  @override
  DateTime today=DateTime.now();


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select date and time",style: Styles.comfortaa16 ,),
      centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Calenderwidget(),
          mytime(),
          Container(
            width: 390.w,
            height: 60.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3.sp),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1), // لتحديد اتجاه الظل
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.person_pin),
                    Text("Number of seats",style: Styles.comfortaa16,),
                  ],
                ),
                Row(
                  children: [
                    Smallbutton( text: "+", swidth: 24, sheight: 24,),
                    SizedBox(width: 20.w,),
                    Text("0",style: Styles.comfortaa16,),
                    SizedBox(width: 20.w,),
                    Smallbutton( text: "-",swidth: 24, sheight: 24,),
                  ],
                )
              ],
            ),
          ),
          ButtonTempl(text: "loading", page: '/home')

        ],
      ),
    );
  }
}
