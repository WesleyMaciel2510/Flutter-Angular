import 'package:flutter/material.dart';
import '../routes/index.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xFF6666FF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.home);
            },
          ),
          IconButton(
            icon: const Icon(Icons.map),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.map);
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_balance_wallet_rounded),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.wallet);
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_box),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.profile);
            },
          ),
        ],
      ),
    );
  }
}

class AppScaffold extends StatelessWidget {
  final Widget body;

  const AppScaffold({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}