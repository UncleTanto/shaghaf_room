import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/widget/popicon.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/widgets/contact_us_widget.dart';


class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            SizedBox(width: 113,),
            Text('Contact Us',style: TextStyle(color: Colors.black),),

          ],
        ),
      ),
      body: const Column(
        children: [
          ContactUsWidget(titel: '01012494416', icon: Icons.local_phone_outlined,kcoloer: Color(
              0xff2ecdc0) ),

          ContactUsWidget(titel: ' Shaghaf Co-working space', icon: Icons.facebook_rounded,kcoloer: Color(
              0xff0b56b6),),
          ContactUsWidget(titel: ' shagaf@gmail.com', icon: Icons.g_mobiledata_outlined,kcoloer: Color(
              0xff26b639),),
          ContactUsWidget(titel: ' shagaf@gmail.com', icon: Icons.snapchat_rounded,kcoloer: Color(
              0xffe0e62e),),
          ContactUsWidget(titel: ' shagaf@gmail.com', icon: Icons.telegram_rounded,kcoloer: Color(
              0xff2397a1),),

          ContactUsWidget(titel: 'shagaf@gmail.com', icon: Icons.tiktok_sharp,kcoloer: Color(
              0xff050505),),



        ],
      ),
    );
  }
}
