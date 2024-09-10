import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/src/core/theme/colors.dart';

class Style {
  static CupertinoThemeData lightMode = const CupertinoThemeData(
    brightness: Brightness.light,
  );

  static CupertinoThemeData darkMode = const CupertinoThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: surfaceColorDark,
  );
}