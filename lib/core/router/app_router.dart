import 'package:flutter/material.dart';
import 'package:sakany/core/router/routes.dart';
import 'package:sakany/features/sign_in/ui/screens/sign_in_screen.dart';
import 'package:sakany/features/sign_up/ui/screens/sign_up_screen.dart';

import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesString.onboardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );

      case RoutesString.signInScreen:
        return MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        );
      case RoutesString.signUpScreen:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
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
