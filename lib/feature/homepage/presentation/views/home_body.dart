import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/ButtonTempl.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/home_view.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/widgets/Advertisement_listview.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(testimagehome),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      ]
                    ),



                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 24, bottom: 12, top: 12, right: 216),
                child: Text(
                  "Advertisement",
                  style: Styles.comfortaa20semi,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: AdvertisementListview(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 110,
                        height: 48,
                        decoration: BoxDecoration(
                          color: kPrimaryOrange,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Membership',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          width: 110,
                          height: 48,
                          decoration: BoxDecoration(
                            color: kPrimaryOrange,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'Birthday',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 110,
                        height: 48,
                        decoration: BoxDecoration(
                          color: kPrimaryOrange,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Photo session',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 22, bottom: 12, right: 228),
                child: Text(
                  "Categories",
                  style: Styles.comfortaa20semi,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ClipPath(
                clipper: DiagonalPathClipperTwo(),
                child: Container(
                  height: 200,
                  width: 342,

                  color: Colors.teal,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.room, size: 50, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          "Rooms",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  ClipPath(
                    clipper: DiagonalPathClipperTwo(),
                    child: Container(
                      height: 200,
                      width: 163,
                      color: Colors.orangeAccent,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_cart,
                                size: 50, color: Colors.white),
                            SizedBox(height: 10),
                            Text(
                              "Orders",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: DiagonalPathClipperTwo(),
                    child: Container(
                      height: 200,
                      width: 163,
                      color: Colors.yellow,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.event, size: 50, color: Colors.white),
                            SizedBox(height: 10),
                            Text(
                              "Events",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
