import 'package:flutter/material.dart';

ThemeData customDarkTheme() {
  return ThemeData.dark().copyWith(
    primaryColor: Colors.black38,
    indicatorColor: const Color(0xFF807A6B),
    primaryIconTheme: ThemeData.dark().primaryIconTheme.copyWith(
          color: Colors.green,
          size: 20,
        ),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFFFFF8E1)),
  );
}
