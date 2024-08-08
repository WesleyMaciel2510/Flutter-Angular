import 'package:flutter/material.dart';
import 'package:flutter_angular/model/iconList_data.dart';
import 'package:flutter_angular/src/components/FlatLists/icon_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: IconList(eventTypeItems: eventTypeItems),
      ),
    );
  }
}
