import 'package:flutter/material.dart';
import 'package:flutter_angular/src/routes/index.dart';
import 'package:flutter_angular/src/services/auth_service.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

var logger = Logger();

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AuthService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return MaterialApp(
      title: 'Flutter Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF6666FF),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      //onGenerateRoute: AppRoutes.generateRoute,
      //initialRoute: AppRoutes.home,
      onGenerateRoute: (settings) {
        if (settings.name == AppRoutes.login && !authService.isAuthenticated) {
          return AppRoutes.generateRoute(settings);  // Route to login if not authenticated
        } else if (authService.isAuthenticated) {
          return AppRoutes.generateRoute(settings);  // Route to authenticated routes
        } else {
          return AppRoutes.generateRoute(settings);  // Route to login if not authenticated
        }
      },
      initialRoute: authService.isAuthenticated ? AppRoutes.home : AppRoutes.login,
      /* home: Scaffold(
        body: Center(
          child: Text(authService.isAuthenticated ? 'Authenticated' : 'Not Authenticated'),
        ),
      ), */
    );
  }
}
// ================= End of the MainApp ================================== 

class ContestTabHeader extends SliverPersistentHeaderDelegate {
  ContestTabHeader(
    this.searchUI,
  );
  final Widget searchUI;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return searchUI;
  }

  @override
  double get maxExtent => 52.0;

  @override
  double get minExtent => 52.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}