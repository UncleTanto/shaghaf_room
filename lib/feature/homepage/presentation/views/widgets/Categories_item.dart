
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/widgets/clip_path_Widget.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: RoundedCornerClipper(),
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 342,
              height: 200,
              decoration: BoxDecoration(
                color: kPrimaryGreen2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                     Center(
                       child: Text(
                        'Rooms',
                        style: TextStyle(fontSize: 24, color: kPrimaryWhite),
                                           ),
                     ),

                  SizedBox(width: 56),
                  Center(
                    child: Image(
                      height: 150.h,
                      width: 150.w,
                      image: AssetImage(ongoing2),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipPath(
              clipper: RoundedCornerClipper2(),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 163,
                  height: 200,
                  decoration: BoxDecoration(
                    color: kPrimaryOrange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Text(
                          'Orders',
                          style: TextStyle(fontSize: 20, color: kPrimaryWhite),
                        ),
                      ),
                      SizedBox(height: 4),
                      Image(
                        height: 120.h,
                        width: 120.w,
                        image: AssetImage(test),
                      ),
                      SizedBox(width: 36),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            ClipPath(
              clipper: RoundedCornerClipper3(),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 163,
                  height: 200,
                  decoration: BoxDecoration(
                    color: kPrimaryYellow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Text(
                          'Events',
                          style: TextStyle(fontSize: 20, color: kPrimaryWhite),
                        ),
                      ),
                      SizedBox(height: 4),
                      Image(
                        height: 120.h,
                        width: 120.w,
                        image: AssetImage(ongoing3),
                      ),
                      SizedBox(width: 36),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
