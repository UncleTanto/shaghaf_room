import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/home_body.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/more_view.dart';
import 'package:shaghaf_room/feature/offers_page/presentation/views/offers_view.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:shaghaf_room/feature/room_page/presentation/views/RoomView.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var _bottomNavIndex = 0; // Default index of the first screen

  final iconList = <IconData>[
    Icons.home, // Icon for Home page
    Icons.book, // Icon for Book page
    Icons.local_offer, // Icon for Offers page
    Icons.more_horiz, // Icon for More page
  ];

  final textList = <String>[
    'Home',
    'Book',
    'Offers',
    'More',
  ];

// List of pages to navigate between
  final List<Widget> _pages = [
    HomeBody(), // صفحة Home
    RoomView(), // صفحة Book
    OffersView(), // صفحة Offers
    MoreView(), // صفحة More
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_bottomNavIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          child: Image(height: 40.h, width: 28.w, image: AssetImage(logo)),
          backgroundColor: Colors.grey,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          itemCount: iconList.length,
          tabBuilder: (int index, bool isActive) {
            final color = isActive ? kPrimaryGreen : Colors.grey;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconList[index],
                  size: 20,
                  color: color,
                ),
                SizedBox(height: 4),
                Text(
                  textList[index],
                  style: TextStyle(
                    color: color,
                    fontSize: 10.sp, // استخدام ScreenUtil لتكييف حجم النص
                  ),
                ),
              ],
            );
          },
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) {
            setState(() {
              _bottomNavIndex = index; // تحديث الـindex عند الضغط على الأيقونة
            });
          },
        ),
      ),
    );
  }
}