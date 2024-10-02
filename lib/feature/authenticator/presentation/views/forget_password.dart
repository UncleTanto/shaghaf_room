import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/ButtonTempl.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/textFormTempl.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
                top: 76, left: 125, right: 125, bottom: 32.75),
            child: Image(height: 235.25, width: 140, image: AssetImage(logo)),
          ), //عملت  padding بدل  SizedBox ووفرت مساحه

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
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
                    "Forgot Your Password ?",
                    style: Styles.comfortaa20semi
                        .copyWith(color: const Color(0xff101623)),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    "Enter your phone number, we will send you confirmation code",
                    style: Styles.comfortaa12,
                  ),
                  const SizedBox(
                    height: 46,
                  ),
                  Text(
                    "Phone Number",
                    style: Styles.comfortaa16Bold,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextFormTempl(
                    textInside: "Enter your Phone Number",
                    iconInside: Icons.phone,
                    showPassword: true,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const ButtonTempl(
                    text: "Reset Password",
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
