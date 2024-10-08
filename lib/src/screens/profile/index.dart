import 'package:flutter/material.dart';
import 'package:flutter_angular/src/components/Buttons/custom_button.dart';
import 'package:flutter_angular/src/routes/index.dart';
import 'package:flutter_angular/src/services/auth_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    //camera Permission =================================================

  Future<void> requestCameraPermission() async {
    final status = await Permission.camera.request();
    if (status.isGranted) {
      logger.i('Camera permission granted');
    } else if (status.isDenied) {
      logger.i('Camera permission denied');
    } else if (status.isPermanentlyDenied) {
      logger.i('Camera permission permanently denied. Please enable it in settings.');
      // Optionally, you can open app settings
      await openAppSettings();
    }
  }

    //===================================================================
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 25),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                      border: Border.all(color: const Color(0xFF494A52), width: 1),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/imgs/user1.png',
                            width: 65,
                            height: 65,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wesley Maciel",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "wesleymaciel2500@gmail.com",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomButton (title: 'Edit Your Profile', action: () { 
              logger.i('Edit Profile button pressed');
             },),
            CustomButton (title: 'Get Camera Permission', action: () { 
              logger.i('Camera Permission button pressed');
                requestCameraPermission();
             },),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "My Account",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.lock),
                          SizedBox(width: 8),
                          Text(
                            "Change Password",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  const Divider(color: Colors.blue),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.notifications),
                          SizedBox(width: 8),
                          Text(
                            "Notifications",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  const Divider(color: Colors.blue),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          // Handle button press
                          authService.logout();

                          if (!authService.isAuthenticated) {
                            Navigator.pushReplacementNamed(context, AppRoutes.login);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFd13d32),
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text(
                          "Logout Your Account",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
