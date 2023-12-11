import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.amber,
      fontFamily: '',
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Montserrat Bold',
                  fontWeight: FontWeight.w500),
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))));
}
