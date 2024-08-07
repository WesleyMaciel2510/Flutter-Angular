import 'package:flutter/material.dart';
import 'package:flutter_angular/src/routes/fade_transitions.dart';
import '../screens/home/index.dart';
import '../screens/profile/index.dart';

class AppRoutes {
  static const String home = '/';
  static const String profile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return FadePageRoute(page: const HomeScreen());
      case profile:
        return FadePageRoute(page: const ProfileScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Page not found'),
            ),
          ),
        );
    }
  }
}