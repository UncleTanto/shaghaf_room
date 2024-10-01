
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/feature/onboarding/presentation/view/onboardingScreen2.dart';

import '../../feature/authenticator/presentation/views/login.dart';
import '../../feature/authenticator/presentation/views/register.dart';
import '../../feature/onboarding/presentation/view/onboardingScreen1.dart';
import '../../feature/onboarding/presentation/view/onboardingScreen3.dart';
import '../../feature/splashscreen/presentation/view/splashscreen.dart';


  abstract class AppRouter {
  static const kongiung = '/ongoing';
  static const kongiung2 = '/ongoing2';
  static const kongiung3 = '/ongoing3';
  static const kLogin = '/login';
  static const kregister = '/register';


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
      GoRoute(
        path: kongiung2,
        builder: (context, state) => const onging2(),
      ),
      GoRoute(
        path: kongiung3,
        builder: (context, state) => const onging3(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => const login(),
      ),
      GoRoute(
        path: kregister,
        builder: (context, state) => const Register(),
      ),

    ],
  );
}
