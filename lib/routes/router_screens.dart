import 'package:go_router/go_router.dart';
import 'package:skibidi_roast/routes/route_names.dart';
import 'package:skibidi_roast/screens/home/home_screen.dart';
import 'package:skibidi_roast/screens/roast_screen/roast_screen.dart';
import 'package:skibidi_roast/screens/onboarding/onboarding.dart';
import 'package:skibidi_roast/screens/splash_screen/splash_screen.dart';

List<GoRoute> buildRoute() {
  return [
    GoRoute(
      path: RoutePath.splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: RoutePath.onboarding,
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: RoutePath.home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: RoutePath.yourAIRoast,
      builder: (context, state) => RoastScreen(),
    ),
  ];
}
