import 'package:flutter/material.dart';
import 'theme_data.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = cognifictTheme;

  ThemeData get themeMode => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == cognifictTheme) {
      themeData = cognifictTheme;
    }
    else {
      themeData = cognifictTheme;
    }
  }
}
