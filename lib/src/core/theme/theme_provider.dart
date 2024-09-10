import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/src/core/theme/style.dart';

class ThemeProvider extends ChangeNotifier {
  CupertinoThemeData _themeData = Style.darkMode;
  CupertinoThemeData get themeData => _themeData;
  
  bool get isDarkMode => _themeData == Style.darkMode;

  set themeData(CupertinoThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() => themeData = isDarkMode ? Style.lightMode : Style.darkMode;
}