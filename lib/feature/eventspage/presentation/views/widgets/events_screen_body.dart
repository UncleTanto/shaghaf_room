import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/eventspage/presentation/views/widgets/events_appbar.dart';
import 'package:shaghaf_room/feature/eventspage/presentation/views/widgets/events_gridview.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/widgets/animated_abar.dart';

class EventsScreenBody extends StatelessWidget {
  const EventsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: EventsAppbar()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
          child: EventsGridview(),
        ),
        SliverToBoxAdapter(
          child: AnimatedAbar(),
        )
      ],
    );
  }
}
