import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/register.dart';

import 'core/utils/app_router.dart';
import 'feature/splashscreen/presentation/view/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return

    MaterialApp.router(
      routerConfig: AppRouter.router,
    );
  }
}