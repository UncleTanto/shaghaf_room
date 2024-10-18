import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';

class AdvertisementItem extends StatelessWidget {
  const AdvertisementItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
          width: 243,
          height: 108,
          decoration: BoxDecoration(
              color: const Color(0xff20473E),
              image: const DecorationImage(image: AssetImage(testimagehome2)),
              borderRadius: BorderRadius.circular(12)),
          child:
              const Image(fit: BoxFit.fill, image: AssetImage(testimagehome2))),
    );
  }
}
