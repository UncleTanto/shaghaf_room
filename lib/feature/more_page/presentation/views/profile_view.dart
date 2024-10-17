import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/textFormTempl.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 115,),
            Text('Profile',style: TextStyle(color: Colors.black),),

          ],
        ),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children:[
              const SizedBox(
                height: 24,
              ),
            Text(
              "Full Name",
              style: Styles.comfortaa14,
            ),
            //a widget TextFormTempl will be for all text fields
            //we can pass text and icon
            const TextFormTempl(
              textInside: "Enter your Full Name",
              iconInside: Icons.person_outline_rounded,
              showPassword: false,
            ),

            const SizedBox(
              height: 24,
            ),
            Text(
              "Phone Number",
              style: Styles.comfortaa14,
            ),
            //a widget TextFormTempl will be for all text fields
            //we can pass text and icon
            const TextFormTempl(
              textInside: "Enter your Phone number",
              iconInside: Icons.phone,
              showPassword: false,
            ),

            const SizedBox(
              height: 24,
            ),
              Text(
                "Change Possword",
                style: Styles.comfortaa14,
              ),
              //a widget TextFormTempl will be for all text fields
              const TextFormTempl(
                textInside: "Enter your Possword",
                iconInside: Icons.lock_outline_rounded,
                showPassword: true,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
              "Confirm Possword",
              style: Styles.comfortaa14,
            ),
            //a widget TextFormTempl will be for all text fields
            //we can pass text and icon
            const TextFormTempl(
              textInside: "Confirm your posswrd",
              iconInside: Icons.lock_outline_rounded,
              showPassword: false,
            ),


          ]
        ),
      ),
    );
  }
}
