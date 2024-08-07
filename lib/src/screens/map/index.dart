import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Screen'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1 / 2,
            child: Image.asset(
              'assets/imgs/mapscreen_header.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12.0),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: const Text('Go to Profile'),
          ),
        ],
      ),
    );
  }
}