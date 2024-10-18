import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/core/utils/app_router.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/widget/offers_and_Events_con.dart';

class EventsContaniar extends StatelessWidget {
  const EventsContaniar({super.key});

  @override
  Widget build(BuildContext context) {
    return OffersAndEventsCon(
      text: "",
      text2: "Positive education\nworkshop",
      Image: testimagehome3,
      onpressed: () {
        GoRouter.of(context).push(AppRouter.kcarsouldetails);
      },
    );
  }
}
