import 'package:flutter/material.dart';
import 'package:sakany/core/router/routes.dart';

import '../../features/onboarding/onboardingScreen.dart';

class AppRouter {
  static Route<dynamic> onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesString.onboardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('noRouteFound'),
        ),
        body: const Center(child: Text('noRouteFound')),
      ),
    );
  }
}
