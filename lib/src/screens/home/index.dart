import 'package:flutter/material.dart';
import 'package:flutter_angular/model/all_events_item.dart';
import 'package:flutter_angular/model/iconList_data.dart';
import 'package:flutter_angular/src/components/FlatLists/icon_list.dart';
import 'package:flutter_angular/src/components/FlatLists/last_Event_row.dart';
import 'package:logger/logger.dart';

var logger = Logger();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedItemName = '';

  void _handleItemClick(AllEventsItem event) {
    setState(() {
      _selectedItemName = event.title;
    });
    logger.i('Event clicked: ${event.title}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            IconList(eventTypeItems: eventTypeItems),
            const SizedBox(height: 5),
            LastEventRow(
              events: allEvents,
              startIndex: 4,
              endIndex: 14,
              onItemClick: _handleItemClick,
            ),
            Text(
              _selectedItemName.isNotEmpty
                  ? _selectedItemName
                  : "Selecione um Item!",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue[700],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

