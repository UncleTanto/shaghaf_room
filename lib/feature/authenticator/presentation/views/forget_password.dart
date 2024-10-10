import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/ButtonTempl.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/textFormTempl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
           Padding(
              padding: EdgeInsets.only(
                  top: 76.h, left: 125.w, right: 125.w, bottom: 32.h),
              child:
                  Image(height: 235.h, width: 140.w, image: AssetImage(logo)),
            ), //عملت  padding بدل  SizedBox ووفرت مساحه

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              width: 342.w,
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
                    showPassword: false,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const ButtonTempl(
                    page: "/home",//todo change it
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
