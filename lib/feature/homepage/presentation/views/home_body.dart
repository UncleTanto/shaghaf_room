import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/core/widget/location_widget.dart';
import 'package:shaghaf_room/core/widget/notificationbell_widget.dart';
import 'package:shaghaf_room/core/widget/rating_widget.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/widgets/Advertisement_listview.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/widgets/Categories_item.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/widgets/clip_path_Widget.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/widgets/drawer_widget.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/widgets/row_view_widget.dart';

class HomeBody extends StatelessWidget {
   HomeBody({super.key});
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: DrawerWidget(),
      ),
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
                children: [
                  Row(
                    children: [
                      SizedBox(width :26),

                      IconButton(onPressed: (){
                        scaffoldKey.currentState!.openDrawer();
                        }, icon: Icon(Icons.format_list_bulleted, color:kPrimaryWhite)),
                      SizedBox(width :324),
                      NotificationbellWidget(),
                    ]
                  ),
                  SizedBox(height :88),
                  Row(
                      children: [
                        SizedBox(width :23),
                        LocationWidget(),
                      ]
                  ),
                  SizedBox(height :20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,

                        children: [
                          RatingWidget(),
                        ]
                    ),
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
              child: RowViewWidget()
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
            child:CategoriesItem(),
          ),
        ],
      ),
    );
  }
}
