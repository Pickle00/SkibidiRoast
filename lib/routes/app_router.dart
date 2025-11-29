import 'package:go_router/go_router.dart';
import 'package:skibidi_roast/routes/route_names.dart';
import 'package:skibidi_roast/routes/router_screens.dart';
import 'package:skibidi_roast/service/storage_service.dart';

class AppRouter {
  static bool? isFirstLaunch;
  late GoRouter router;

  AppRouter() {
    checkFirstLaunch();
    router = GoRouter(
      initialLocation: RoutePath.splashScreen,
      routes: buildRoute(),
      redirect: (context, state) async {
        if (isFirstLaunch == null) {
          return null;
        }
        final loggingInFlow = state.fullPath == RoutePath.splashScreen;

        if (loggingInFlow) {
          return isFirstLaunch! ? RoutePath.onboarding : RoutePath.home;
        }
        return null;
      },
    );
  }

  void checkFirstLaunch() async {
    await Future.delayed(const Duration(seconds: 3));
    isFirstLaunch = await StorageService.checkFirstLaunch();
    router.refresh();
  }
}
