import 'package:flutter/material.dart';

class FadePageRoute extends PageRouteBuilder {
  final Widget page;

  FadePageRoute({required this.page})
      : super(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = 0.0;
          const end = 1.0;
          const curve = Curves.easeIn;
          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var opacity = animation.drive(tween);
          return FadeTransition(opacity: opacity, child: child);
        },
      );
}
