import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class AppThemeManager {
  static ThemeData mainTheme = ThemeData(
    scaffoldBackgroundColor: Constants.primaryColor,
    primaryColor: Constants.primaryColor,
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontFamily: Constants.fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: Colors.white,
      ),
      displayMedium: TextStyle(
        fontSize: 14,
        color: Color(0xFF707070),
        fontWeight: FontWeight.w500,
        fontFamily: Constants.fontFamily,
      ),
      bodyMedium: TextStyle(
        fontFamily: Constants.fontFamily,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20,
      ),
      titleLarge: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight:   FontWeight.normal,
        fontFamily: Constants.fontFamily,
      ),
      labelMedium: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight:   FontWeight.bold,
        fontFamily: Constants.fontFamily,

      )
    ),
  );
}
