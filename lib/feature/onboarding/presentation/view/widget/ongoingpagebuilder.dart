import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/style.dart';

class ongoingpagebuilder extends StatelessWidget {
  const ongoingpagebuilder({super.key, required this.pageController, required this.pageContent});

  final PageController pageController;
  final List pageContent;

  @override

  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: PageView.builder(
            controller: pageController,
            itemCount:pageContent.length ,
            itemBuilder: (context,index){
              return
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      SizedBox(height: 76.h,),
                      Container(
                        width: 300.w,
                        height: 300.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("${pageContent[index]["img"]}"),fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(height: 24.h,),
                      Center(child: Text("${pageContent[index]["title"]}", style: Styles.comfortaa20semi.copyWith(color:kPrimaryWhite),)),
                      SizedBox(height: 24.h,),
                      Center(child: Text("${pageContent[index]["subtitle"]}",style: Styles.comfortaa14.copyWith(color:kPrimaryYellow),)),
                    ],
                  ),
                );
            }),
      ),
    );
  }
}
