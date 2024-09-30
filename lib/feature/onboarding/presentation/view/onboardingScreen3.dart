import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/feature/onboarding/presentation/view/widget/dots.dart';
import 'package:shaghaf_room/feature/onboarding/presentation/view/widget/roundbutton.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/style.dart';

class onging3 extends StatelessWidget {
  const onging3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryGreen,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 16,right: 25,bottom: 67),
              child: InkWell(onTap: (){
                GoRouter.of(context).pushReplacement(AppRouter.kLogin);
              },child: Text("Skip",style: Styles.comfortaa17.copyWith(color: Colors.white))),
            ),
            Container(
              width: 350,
              height: 350,
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20,right: 20,bottom: 24),
              child:Image.asset(
                ongoing3,
                fit: BoxFit.fill,

              ),
            ),
            Text("Choose your favorite room",style: Styles.comfortaa20semi.copyWith(color: Colors.white),),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(25),
              alignment: Alignment.center,
              child: Text("You can find the right room for your current mood,"
                  " as we have many rooms that meet all needs, You can move between funny room,"
                  " training room and meeting room"
                ,style: Styles.comfortaa16.copyWith(color:kPrimaryYellow),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DotWidget(color: kPrimaryOrange.withAlpha(128)),
                SizedBox(width: 9,),
                DotWidget(color: kPrimaryOrange.withAlpha(128)),
                SizedBox(width: 9,),
                DotWidget(color: kPrimaryOrange),
              ],
            ),
            Container(
              margin: EdgeInsets.all(25),
                child: RoundButtonWithIcon(icon: Icons.navigate_next, color: Colors.black12, onPressed: (){
                  GoRouter.of(context).pushReplacement(AppRouter.kLogin);

                }))
          ],
        ),
      ),
    );
  }
}
