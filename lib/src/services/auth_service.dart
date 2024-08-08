import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

var logger = Logger();

class AuthService with ChangeNotifier {
  bool _isAuthenticated = true;
  //bool _isEnvLoaded = false;

  bool get isAuthenticated => _isAuthenticated;

  /* Future<void> _loadEnv() async {
    if (!_isEnvLoaded) {
    
      try {
        await dotenv.load(fileName: '.env');
        _isEnvLoaded = true;
        logger.i('Environment variables loaded');
      } catch (e) {
        logger.e('Failed to load .env file: $e');
      }
    }
  } */

  Future<void> login(String email, String password) async {
    try {
      logger.i('Login function called with email: $email and password: $password');
      //await _loadEnv(); // Ensure .env file is loaded

      //final String serverAddress = dotenv.get('localhost', fallback: 'localhost');
      final response = await http.post(
      Uri.parse('http://192.168.100.2:8080/api/auth'),
        //Uri.parse('http://localhost:8080/api/auth'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          //TO TEST
          //'email': 'wesley@gmail.com',
          //'password': 'test123',
          'email': email,
          'password': password,
        }),
      );

      logger.i('Response body: ${response.body}');

      if (response.statusCode == 200) {
        final bool isAuthenticated = jsonDecode(response.body);
        logger.i('is authenticated? =  $isAuthenticated');
        if (isAuthenticated) {
          _isAuthenticated = true;
          logger.i('Login successful');
        } else {
          _isAuthenticated = false;
          logger.i('Login failed: Incorrect email or password');
        }
      } else {
        logger.e('Login request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      logger.e('Error during login: $e');
    }

    notifyListeners();
  }

  void logout() {
    logger.i('Logout function called');
    _isAuthenticated = false;
    notifyListeners();
  }
}
