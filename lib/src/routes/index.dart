import 'package:flutter/material.dart';
import 'package:flutter_angular/src/routes/fade_transitions.dart';
import '../screens/home/index.dart';
import '../screens/map/index.dart';
import '../screens/wallet/index.dart';
import '../screens/profile/index.dart';
import '../components/bottom_nav_bar.dart';

class AppRoutes {
  static const String home = '/';
  static const String map = '/map';
  static const String wallet = '/wallet';
  static const String profile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return FadePageRoute(
          page: const AppScaffold(
            body: HomeScreen(),
          ),
        );
      case map:
        return FadePageRoute(
          page: const AppScaffold(
            body: MapScreen(),
          ),
        );
      case wallet:
        return FadePageRoute(
          page: const AppScaffold(
            body: WalletScreen(),
          ),
        );
      case profile:
        return FadePageRoute(
          page: const AppScaffold(
            body: ProfileScreen(),
          ),
        );
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