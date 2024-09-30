import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app_router.dart';
import '../../../../core/utils/constants.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    navigateToHome(context);
    return Scaffold(
      body: Center(
        child: Image.asset(
          splashscreenimg,
          fit: BoxFit.cover,

        ),
      ),
    );
  }
}

void navigateToHome(BuildContext context) {
  Future.delayed(
    const Duration(seconds: 3),
        () {
      GoRouter.of(context).pushReplacement(AppRouter.kongiung);
    },
  );
}