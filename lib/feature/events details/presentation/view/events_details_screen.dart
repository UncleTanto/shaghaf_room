import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/events%20details/presentation/view/widgets/events_details_body.dart';

class EventsDetailsScreen extends StatelessWidget {
  const EventsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff20473E),
      body: EventsDetailsBody(),
    ));
  }
}
