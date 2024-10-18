import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/feature/onboarding/presentation/view/widget/ongoingbottomsheet.dart';
import 'package:shaghaf_room/feature/onboarding/presentation/view/widget/ongoingpagebuilder.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/style.dart';


class onboarding extends StatelessWidget {
   onboarding({super.key});

  PageController pageController=PageController();

  int selectPage=0;

  List pageContent=[
    {
      "img": "lib/core/assets/ongoingScreen1.png",
      "title": "Your favorite place to work",
      "subtitle": "In Shaghaf Co-working space,we provide a place that makes you more productive, enjoyable and comfortableA place made up of different parts",
    },
    {
      "img": "lib/core/assets/ongoingScreen2.png",
      "title": "Delightful open air",
      "subtitle": "You can choose a game to play from the many games we have , sit at a comfortable base, or take pictures in the different places that have been specially made to take beautiful pictures.",
    },
    {
      "img": "lib/core/assets/ongoingScreen3.png",
      "title": "Choose your favorite room",
      "subtitle": "IYou can find the right room for your current mood, as we have many rooms that meet all needs, You can move between funny room, training room and meeting room",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryGreen,
        body:
        Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: TextButton(onPressed: (){
                context.push('/login');
              }, child: Text("Skip",style: Styles.comfortaa17.copyWith(color: kPrimaryWhite),)),
            ),
            ongoingpagebuilder(pageController: pageController, pageContent: pageContent),
            ongoingbttomsheet(pageController: pageController, pageContent: pageContent),

          ],
        )
      ),
    );
  }
}
