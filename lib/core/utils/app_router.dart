
import 'package:go_router/go_router.dart';

import '../../feature/authenticator/presentation/views/login.dart';
import '../../feature/authenticator/presentation/views/register.dart';
import '../../feature/onboarding/presentation/view/onboarding.dart';

import '../../feature/splashscreen/presentation/view/splashscreen.dart';


  abstract class AppRouter {
  static const kongiung = '/ongoing';
  static const kLogin = '/login';
  static const kregister = '/register';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>  Splashscreen(),
      ),
      GoRoute(
        path: kongiung,
        builder: (context, state) =>  onboarding(),
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
