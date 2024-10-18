import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/home_body.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/more_view.dart';
import 'package:shaghaf_room/feature/offers_page/presentation/views/offers_view.dart';
import 'package:shaghaf_room/feature/room_page/presentation/views/RoomView.dart';

class AnimatedAbar extends StatefulWidget {
  const AnimatedAbar({super.key});

  @override
  State<AnimatedAbar> createState() => _AnimatedAbarState();
}

class _AnimatedAbarState extends State<AnimatedAbar> {
  Widget _currentPage = const HomeBody();

  void _updatePage(Widget page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedButtonBar(
      backgroundColor: Colors.white,
      foregroundColor: const Color(0xff20473E),
      radius: 8.0,
      padding: const EdgeInsets.all(16.0),
      invertedSelection: true,
      children: [
        ButtonBarEntry(
          onTap: () =>
              _updatePage(const HomeBody()), // تغيير الصفحة إلى HomeBody
          child: const Column(children: const [
            Icon(Icons.home_filled),
            Text('Home'),
          ]),
        ),
        ButtonBarEntry(
          onTap: () =>
              _updatePage(const RoomView()), // تغيير الصفحة إلى BookView
          child: const Column(children: const [
            Icon(Icons.book),
            Text('Book'),
          ]),
        ),
        ButtonBarEntry(
          onTap: () =>
              _updatePage(const OffersView()), // تغيير الصفحة إلى OffersView
          child: const Column(
            children: const [
              Icon(Icons.local_offer),
              Text('Offers'),
            ],
          ),
        ),
        ButtonBarEntry(
          onTap: () =>
              _updatePage(const MoreView()), // تغيير الصفحة إلى MoreView
          child: const Column(
            children: const [
              Icon(Icons.format_list_bulleted),
              Text('More'),
            ],
          ),
        ),
      ],
    );
  }
}
