import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/core/utils/app_router.dart';
import 'package:shaghaf_room/core/utils/style.dart';

class ButtonTempl extends StatelessWidget {
  const ButtonTempl({super.key, required this.text, required this.page});

  final String text;
  final String page;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          width: double.infinity,
          height: 52.h,
          child: ElevatedButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kHomepage);
              //print('Rounded Elevated Button Pressed');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF20473E),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              text,
              style: Styles.comfortaa12,
            ),
          ),
        ),
      ),
    );
  }
}
