import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

var logger = Logger();

class AuthService with ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  void login(String email, String password) {
    logger.i('Login function called with email: $email and password: $password');

    // Mock credentials
    const mockEmail = 'wesley@gmail.com';
    const mockPassword = 'casa123';

    // Simple mock authentication
    if (email == mockEmail && password == mockPassword) {
      _isAuthenticated = true;
      logger.i('Login successful');
    } else {
      _isAuthenticated = false;
      logger.i('Login failed: Incorrect email or password');
    }

    notifyListeners();
  }

  void logout() {
    logger.i('Logout function called');
    _isAuthenticated = false;
    notifyListeners();
  }
}
