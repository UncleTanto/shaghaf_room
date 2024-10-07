import 'package:flutter/material.dart';
class NotificationbellWidget extends StatelessWidget {
  const NotificationbellWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
        child: Icon(Icons.notifications_active, color: Colors.white, size: 24));
  }
}
