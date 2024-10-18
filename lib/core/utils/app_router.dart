import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/feature/events%20details/presentation/view/events_details_screen.dart';
import 'package:shaghaf_room/feature/eventspage/presentation/views/events_screen.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/home_view.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/setting_view.dart';
import 'package:shaghaf_room/feature/offers_category/presentation/view/offers_screen.dart';

import '../../feature/authenticator/presentation/views/login.dart';
import '../../feature/authenticator/presentation/views/register.dart';
import '../../feature/onboarding/presentation/view/onboarding.dart';

import '../../feature/splashscreen/presentation/view/splashscreen.dart';

abstract class AppRouter {
  static const kongiung = '/ongoing';
  static const kLogin = '/login';
  static const kregister = '/register';
  static const kOffers = '/offers_page';
  static const kEvents = '/events_page';
  static const kHomepage = '/Homepage';
  static const kAlertdailog = '/alertdailog';
  static const kcarsouldetails = '/carsouldetails';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => Splashscreen(),
      ),
      GoRoute(
        path: kongiung,
        builder: (context, state) => onboarding(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => const login(),
      ),
      GoRoute(
        path: kregister,
        builder: (context, state) => const Register(),
      ),
      GoRoute(
        path: kOffers,
        builder: (context, state) => const OffersScreen(),
      ),
      GoRoute(
        path: kEvents,
        builder: (context, state) => const EventsScreen(),
      ),
      GoRoute(
        path: kcarsouldetails,
        builder: (context, state) => const EventsDetailsScreen(),
      ),
      GoRoute(
        path: kHomepage,
        builder: (context, state) => const SettingView(),
      ),
    ],
  );
}
