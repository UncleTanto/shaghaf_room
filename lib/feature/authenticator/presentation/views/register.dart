import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaghaf_room/core/utils/assets.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/ButtonTempl.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/textFormTempl.dart';

//this class is still under implementation
// I just added some code and one widget textFormImpli
class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Image(
                height: 200, width: double.infinity, image: AssetImage(logo)),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xFFFCE9BD)),
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phone Number",
                      style: Styles.comfortaa16Bold,
                    ),
                    //a widget TextFormTempl will be for all text fields
                    //we can pass text and icon
                    const TextFormTempl(
                      textInside: "Enter your Phone number",
                      iconInside: Icons.phone_in_talk_outlined,
                      showPassword: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Name",
                      style: Styles.comfortaa16Bold,
                    ),
                    //a widget TextFormTempl will be for all text fields
                    const TextFormTempl(
                      textInside: "Enter your Name",
                      iconInside: Icons.perm_identity_outlined,
                      showPassword: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Password",
                      style: Styles.comfortaa16Bold,
                    ),
                    //a widget TextFormTempl will be for all text fields
                    const TextFormTempl(
                      textInside: "Enter your Password",
                      iconInside: Icons.lock_outline_rounded,
                      showPassword: true,
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Confirm Password",
                      style: Styles.comfortaa16Bold,
                    ),
                    const TextFormTempl(
                        textInside: "Confirm Password",
                        iconInside: Icons.lock_outline_rounded,
                        showPassword: true),

                    
                    //instead of sized box I have added padding inside button
                   ButtonTempl(text: "Sign UP")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
