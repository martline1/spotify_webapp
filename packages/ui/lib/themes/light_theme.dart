import 'package:flutter/material.dart';

class LightTheme {
  static const primaryColor = Color(0xFF1ed760);

  static const borderWidth = 2.8;

  static final themeData = ThemeData.light().copyWith(
    primaryColor: primaryColor,

    // Custom Text Styles
    textTheme: const TextTheme(
      caption: TextStyle(
        fontSize: 14,
        height: 1.25,
        fontWeight: FontWeight.w900,
      ),
    ),

    // Rounded Colored Button Styles
    elevatedButtonTheme: ElevatedButtonThemeData(style: roundedButtonStyle),

    // Rounded Outlined Button Styles
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: roundedButtonStyle.merge(
        OutlinedButton.styleFrom(
          side: const BorderSide(width: 1, color: Color(0xFF878787)),
        ),
      ),
    ),

    // Custom Form Input
    inputDecorationTheme: const InputDecorationTheme(
      errorStyle: TextStyle(height: 0.01, color: Colors.transparent),
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: borderWidth),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: borderWidth),
      ),
    ),
  );

  static final roundedButtonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(double.infinity, 55),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );
}
