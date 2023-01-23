import 'package:flutter/material.dart';

import '../main.page.dart';
import '../pages/Auth/forget.screen.dart';
import '../pages/Auth/login.screen.dart';
import '../pages/Auth/register.screen.dart';
import '../pages/Journal/model/feature.model.dart';
import '../pages/Splash/splash.screen.dart';
import '../pages/music/music.screen.dart';
import '../pages/onboard/onboard.screen.dart';
import 'string.manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String resetPasswordRoute = "/resetPassword";
  static const String mainRoute = "/main";
  static const String musicRoute = "/music";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    final arg = routeSettings.arguments;
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (_) => const MainPageScreen(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (_) => RegisterScreen(),
        );
      case Routes.resetPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => ResetPasswordScreen(),
        );
      case Routes.musicRoute:
        return MaterialPageRoute(
          builder: (_) => MusicScreen(
            data: arg as FeatureItemModel,
          ),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(child: Text("No Route Found")),
      ),
    );
  }
}
