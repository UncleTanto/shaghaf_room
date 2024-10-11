import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        Image(height: 235.h, width: 140.w, image: AssetImage(logo)),

        const SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.person_outline_outlined, color: Color(0xffF04C29),size: 22,),
          title: Text('Profile'),
        ),
        ListTile(
          leading: Icon(Icons.language, color: Color(0xffF04C29),size: 22,),
          title: Row(
            children: [
              Text('English'),
              Icon(Icons.arrow_drop_down, color: Color(0xffF04C29),size: 22,),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.shopping_cart, color: Color(0xffF04C29),size: 22,),
          title: Text('Orders'),
        ),
        ListTile(
          leading: Icon(Icons.notifications, color:Color(0xffF04C29),size: 22,),
          title: Text('Notification'),
        ),
        ListTile(
          leading: Icon(Icons.star, color: Color(0xffF04C29),size: 22,),
          title: Text('Rating'),
        ),
        ListTile(
          leading: Icon(Icons.contact_mail, color: Color(0xffF04C29),size: 22,),
          title: Text('Contact Us'),
        ),

      ],
    );
  }
}
