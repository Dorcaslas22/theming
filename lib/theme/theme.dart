import 'package:flutter/material.dart';

// lightMode

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.green.shade700,
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 35.0,
      fontWeight: FontWeight.bold,
      color: Colors.green.shade700,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        const Color(0xFF31973F),
      ),
      foregroundColor:
      MaterialStateProperty.all<Color>(Colors.white), // text color
      elevation: MaterialStateProperty.all<double>(5.0), // shadow
      padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 20, vertical: 18)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Adjust as needed
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 18,
        ), // Increase font size to 20
      ),
    ),
  ),
);



// dark mode
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black38,
    primary: Colors.green
        .shade200, // Adjusted to a lighter shade for visibility on dark background
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 35.0,
      fontWeight: FontWeight.bold,
      color: Colors.green.shade200, // Adjusted to a lighter shade
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        Colors.green.shade400, // Slightly darker shade for the button
      ),
      foregroundColor:
      MaterialStateProperty.all<Color>(Colors.white), // text color
      elevation: MaterialStateProperty.all<double>(5.0), // shadow
      padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 20, vertical: 18)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Adjust as needed
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(
          Colors.grey.shade300), // Lighter grey for visibility
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 18,
        ),
      ),
    ),
  ),
);