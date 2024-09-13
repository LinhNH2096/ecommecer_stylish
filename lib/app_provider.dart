import 'package:ecommerce_stylish_flutter/resources/theme/app_text_theme.dart';
import 'package:ecommerce_stylish_flutter/resources/theme/theme.dart';
import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  // Toggle the theme between light and dark
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners(); // Notify the widgets that are listening
  }

  // Get the current theme
  ThemeData get currentTheme {
    return _isDarkMode ? AppTheme.darkTheme() : AppTheme.lightTheme();
  }

}