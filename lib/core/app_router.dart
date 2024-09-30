
import 'package:go_router/go_router.dart';

import '../feature/onboarding/presentation/view/onboardingScreen1.dart';
import '../feature/splashscreen/presentation/view/splashscreen.dart';


  abstract class AppRouter {
  static const kongiung = '/ongoing';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Splashscreen(),
      ),
      GoRoute(
        path: kongiung,
        builder: (context, state) => const onging(),
      ),

    ],
  );
}
