import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/Notification_view.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/contact_us_view.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/profile_view.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/widgets/setting_widget.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.notifications_active, color: Colors.black, size: 24),
            Text(
              'Settings',
              style: TextStyle(color: Colors.black),
            ),
            Icon(Icons.filter_list_sharp, color: Colors.black, size: 24),
          ],
        ),
      ),
      body: Column(
        children: [
          SettingWidget(
            text: 'Profile',
            icon: Icons.person_outline_outlined,
            screen: ProfileView(),
          ),
          const ListTile(
            leading: Icon(
              Icons.language,
              color: Color(0xffF04C29),
              size: 16,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('English'),
                Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xffF04C29),
                  size: 16,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              color: Colors.grey[300], // الخط تحت العنصر بلون رصاصي خفيف
              thickness: 2,
              height: 2,
            ),
          ),
          SettingWidget(
            text: 'Notification',
            icon: Icons.notifications_active,
            screen: NotificationView(),
          ),
          SettingWidget(
            text: 'About Us',
            icon: Icons.message,
            screen: ContactUsView(),
          ),
          SettingWidget(
            text: 'Contact Us',
            icon: Icons.perm_phone_msg_outlined,
            screen: ContactUsView(),
          ),
        ],
      ),
    );
  }
}
