import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/splashscreen/presentation/view/widget/splash_screen_body.dart';


class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SplashScreenBody(),
      ),
    );
  }
}
