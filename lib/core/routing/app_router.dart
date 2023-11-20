import 'package:complete_project/core/routing/routes.dart';
import 'package:complete_project/features/login/ui/widgets/login_screen.dart';
import 'package:complete_project/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {

// this arguments to be passed in any screen
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
