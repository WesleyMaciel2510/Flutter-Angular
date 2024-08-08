import 'package:flutter/material.dart';
import 'package:flutter_angular/model/iconList_data.dart';

class EventTypeItemView extends StatelessWidget {
  final EventTypeItem item;

  const EventTypeItemView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFF494A52), width: 1.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 8.0,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: ClipOval(
              child: Image.asset(
                item.iconPath,
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        // Wrap the Text widget in an Expanded widget to handle overflow
        Expanded(
          child: Text(
            item.label,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
