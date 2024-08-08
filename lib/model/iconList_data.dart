import 'package:flutter/material.dart';

class EventTypeItem {
  final String iconPath;
  final String label;

  EventTypeItem(this.iconPath, this.label);
}

final List<EventTypeItem> eventTypeItems = [
  EventTypeItem('assets/icons/icon1.png', 'Parties'),
  EventTypeItem('assets/icons/icon2.png', 'Theaters'),
  EventTypeItem('assets/icons/icon3.png', 'Sports'),
  EventTypeItem('assets/icons/icon4.png', 'Most Popular'),
  EventTypeItem('assets/icons/icon5.png', 'StandUp Comedy'),
  EventTypeItem('assets/icons/icon6.png', 'Lectures'),
  EventTypeItem('assets/icons/icon7.png', 'Gastronomy'),
  EventTypeItem('assets/icons/icon8.png', 'Technology'),
  EventTypeItem('assets/icons/icon9.png', 'Children\'s'),
  EventTypeItem('assets/icons/icon10.png', 'Online Events'),
];
