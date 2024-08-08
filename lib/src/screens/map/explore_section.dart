import 'package:flutter/material.dart';
import 'package:flutter_angular/src/components/buttons/icon_and_label_button.dart';
import 'package:flutter_angular/src/routes/index.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:logger/logger.dart';
import 'package:flutter_angular/app_theme.dart';

var logger = Logger();

class ExploreEventsSection extends StatelessWidget {
  const ExploreEventsSection({super.key});

  Future<void> _requestLocationPermission(BuildContext context) async {
    final status = await Permission.location.request();

    if (status.isGranted) {
      logger.i('Location permission granted');
      Navigator.pushNamed(context, AppRoutes.explore);
    } else {
      logger.i('Location permission denied');
      // Handle the case where permission is denied if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text(
            "Explore events near you",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppTheme.nightBlack,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            "Easily find events around you.\nUsing the map requires your location permission.",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: AppTheme.nightBlack,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5, // Set button width to 50% of screen width
            child: IconAndLabelButton(
              icon: Icons.place,
              label: "Find Events Near Me",
              color: AppTheme.blue40,
              onPressed: () {
                logger.i('RequestLocationButton Clicked!');
                _requestLocationPermission(context);
              },
            ),
          ),
        ),
        const SizedBox(height: 12), // Add vertical padding between buttons
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5, // Set button width to 50% of screen width
            child: IconAndLabelButton(
              label: "Choose your city manually",
              color: AppTheme.green40,
              onPressed: () {
                logger.i('cityButton Clicked!');
              },
              icon: null,
            ),
          ),
        ),
      ],
    );
  }
}