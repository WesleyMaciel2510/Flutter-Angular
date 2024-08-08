import 'package:flutter/material.dart';
import 'package:flutter_angular/model/all_events_item.dart';
import 'package:flutter_angular/src/widgets/last_event_item_view.dart';

class LastEventRow extends StatelessWidget {
  final List<AllEventsItem> events;
  final Function(AllEventsItem) onItemClick;
  final int startIndex;
  final int endIndex;

  const LastEventRow({
    super.key,
    required this.events,
    required this.onItemClick,
    required this.startIndex,
    required this.endIndex,
  });

  @override
  Widget build(BuildContext context) {
    final int adjustedEndIndex = endIndex >= events.length ? events.length - 1 : endIndex;

    final List<AllEventsItem> slicedEvents = events.sublist(startIndex, adjustedEndIndex + 1);

    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
          "Most Visited Events in the Last 24h!",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue[700],
            ),
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            height: 330.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: slicedEvents.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => onItemClick(slicedEvents[index]),
                  child: LastEventItemView(item: slicedEvents[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
