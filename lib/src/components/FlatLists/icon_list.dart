import 'package:flutter/material.dart';
import 'package:flutter_angular/model/iconList_data.dart';
import 'package:flutter_angular/src/widgets/event_type_item_view.dart';

class IconList extends StatelessWidget {
  final List<EventTypeItem> eventTypeItems;

  const IconList({super.key, required this.eventTypeItems});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
          child: Text(
            'Go for it, life is now!',
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue[700],
            ),
          ),
        ),
        Container(
          height: 120.0,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: eventTypeItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: EventTypeItemView(item: eventTypeItems[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
