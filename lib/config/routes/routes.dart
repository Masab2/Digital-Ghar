import 'package:digital_ghar/config/routes/routes_names.dart';
import 'package:digital_ghar/view/view.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case RoutesNames.splashView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case RoutesNames.loginView:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case RoutesNames.registerView:
        return MaterialPageRoute(
          builder: (_) => const RegisterView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No Route Defined'),
              ),
            );
          },
        );
    }
  }
}
