import 'package:flutter/material.dart';

import '../../features/login/ui/loginscreen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import 'routes.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    final argument = settings.arguments;

    switch (settings.name) {
      case Routes.onboardingscreen:
        return MaterialPageRoute(
          builder: (context) => const Onboardingscreen(),
        );
      case Routes.loginscreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No Route Default for ${settings.name}')),
          ),
        );
    }
  }
}
