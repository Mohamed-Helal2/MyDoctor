import 'package:flutter/material.dart';
import 'package:mydoctor/core/di/dependency_injection.dart';
import 'package:mydoctor/features/Home/ui/home_screen.dart';
import 'package:mydoctor/features/login/logic/cubit/login_cubit.dart';

import '../../features/login/ui/loginscreen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import 'routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homescreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
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
