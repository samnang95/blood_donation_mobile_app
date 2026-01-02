import 'package:flutter/material.dart';

class AppThemes {
  // Text themes
  final TextTheme lightTextTheme = const TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
    bodyLarge: TextStyle(color: Colors.black, fontSize: 24),
    titleLarge: TextStyle(color: Colors.black),
  );
  final TextTheme darkTextTheme = const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white, fontSize: 24),
    titleLarge: TextStyle(color: Colors.white),
  );

  // Light theme
  ThemeData lightTheme(BuildContext context) => ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: lightTextTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.blue,
    ),
  );

  // Dark theme
  ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.black,
    textTheme: darkTextTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.grey,
      foregroundColor: Colors.white,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.blueGrey,
    ),
  );
}
