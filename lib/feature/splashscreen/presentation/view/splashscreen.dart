import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/constants.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    navigateToHome(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryGreen,
        body: Center(
          child: Container(
            width: double.infinity,
            child:
            Image.asset(
              splashscreenimg,
              fit: BoxFit.fill,

            ),
          ),
        ),
      ),
    );
  }
}

void navigateToHome(BuildContext context) {
  Future.delayed(const Duration(seconds: 4),
        () {
      GoRouter.of(context).pushReplacement(AppRouter.kongiung);
    },
  );
}