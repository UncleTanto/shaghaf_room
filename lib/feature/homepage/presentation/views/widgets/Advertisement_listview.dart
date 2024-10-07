import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/widgets/Advertisement_item.dart';
class AdvertisementListview extends StatelessWidget {
  const AdvertisementListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:double.infinity,
      height: 108,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return  AdvertisementItem();
        },itemCount:10),
    );;
  }
}
