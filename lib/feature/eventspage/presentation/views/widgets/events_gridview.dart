import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/eventspage/presentation/views/widgets/events_contaniar.dart';

class EventsGridview extends StatelessWidget {
  const EventsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(left: 24),
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10, crossAxisSpacing: 2, crossAxisCount: 2),
          itemBuilder: (context, index) {
            return const EventsContaniar();
          },
          itemCount: 10),
    ));
  }
}
