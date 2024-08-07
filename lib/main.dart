import 'package:flutter/material.dart';
import 'src/routes/index.dart';
import 'package:flutter/services.dart'; 

void main() {
  runApp(const MyApp());
   SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xFF6666FF), // Color of the status bar
      statusBarIconBrightness: Brightness.light, // Status bar icons color
      statusBarBrightness: Brightness.dark, // Status bar background brightness
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primarySwatch: Colors.blue, // This sets the AppBar color
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF6666FF), // Hex color for AppBar
          titleTextStyle: TextStyle(
            color: Colors.white, // Color of the AppBar title text
            fontSize: 20, // Optionally, set the font size
          ),
          iconTheme: IconThemeData(
            color: Colors.white, // Color of the AppBar icons (including back arrow)
          ),
        ),
      ),
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
