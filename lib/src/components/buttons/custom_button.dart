import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback action;
  final double width;

  const CustomButton({
    super.key,
    required this.title,
    required this.action,
    this.width = 200.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: action,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
