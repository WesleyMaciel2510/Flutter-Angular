import 'package:flutter/material.dart';
import '../screens/home/index.dart';
import '../screens/map/index.dart';
import '../screens/wallet/index.dart';
import '../screens/profile/index.dart';
import '../screens/explore/index.dart';
import '../screens/login/index.dart'; 
import '../components/bottom_nav_bar.dart';

class AppRoutes {
  static const String home = '/';
  static const String map = '/map';
  static const String wallet = '/wallet';
  static const String profile = '/profile';
  static const String explore = '/explore';
  static const String login = '/login'; 

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => const AppScaffold(body: HomeScreen()),
        );
      case map:
        return MaterialPageRoute(
          builder: (_) => const AppScaffold(body: MapScreen()),
        );
      case wallet:
        return MaterialPageRoute(
          builder: (_) => const AppScaffold(body: WalletScreen()),
        );
      case profile:
        return MaterialPageRoute(
          builder: (_) => const AppScaffold(body: ProfileScreen()),
        );
      case explore:
        return MaterialPageRoute(
          builder: (_) => const AppScaffold(body: ExploreScreen()),
        );
      case login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}
