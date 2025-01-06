import 'package:flutter/material.dart';
import 'package:stroll_interview/config/colors.dart';

// Light Theme
ThemeData appTheme = ThemeData(
  colorScheme: const ColorScheme.light(primary: appColor),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
        color: lightPurple,
        fontWeight: FontWeight.w700,
        fontSize: 39,
        shadows: [
          Shadow(
            color: Color(0x33000000),
            offset: Offset(0, 0),
            blurRadius: 7.9,
          ),
          Shadow(
            color: Color(0xFFBEBEBE),
            offset: Offset(0, 0),
            blurRadius: 2,
          ),
          Shadow(
            color: Color(0x8024232F),
            offset: Offset(0, 1),
            blurRadius: 5,
          ),
        ]),
    bodySmall: TextStyle(
      color: Colors.white,
      fontSize: 12,
    ),
  ),
);

// Dark Theme
ThemeData appDarkTheme = ThemeData(
  colorScheme: const ColorScheme.dark(),
);
