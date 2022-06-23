import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  final ThemeMode themeMode;
  ThemeProvider({required this.themeMode});

  ThemeData getDarkThemeData() {
    return ThemeData(
        colorScheme: const ColorScheme.dark(),
        fontFamily: "Poppins",
        scaffoldBackgroundColor: Colors.black);
  }

  ThemeData getLightThemeData() {
    return ThemeData(
        colorScheme: const ColorScheme.light(), fontFamily: "Poppins");
  }

  String getTheme() {
    return themeMode == ThemeMode.dark ? "dark" : "light";
  }
}
