import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class Calenderwidget extends StatefulWidget {
  const Calenderwidget({super.key});

  @override
  State<Calenderwidget> createState() => _CalenderwidgetState();
}

class _CalenderwidgetState extends State<Calenderwidget> {
  @override
  DateTime today=DateTime.now();
  void _onSelected(DateTime day, DateTime focusedDay){
    setState(() {
      today=day;
    });
  }

  Widget build(BuildContext context) {
    return
      SizedBox(
        width: 356.w,
        child: TableCalendar(

            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              titleTextStyle:TextStyle(fontSize: 16),
              formatButtonTextStyle: const TextStyle(fontSize: 16),
            ),
            focusedDay: today,
            onDaySelected: _onSelected,
            selectedDayPredicate: (day)=>isSameDay(day, today),
            firstDay: DateTime.now(),
            lastDay: DateTime(2030)),
      );
  }
}