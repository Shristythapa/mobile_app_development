import 'package:flutter/material.dart';

ThemeData getTheme() {
  return ThemeData(
    useMaterial3: false,
    
   // scaffoldBackgroundColor: Colors.black,
    primarySwatch: Colors.teal,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontFamily: 'Montserrat Bold', fontSize: 25, color: Colors.white),
    ),

  );

}
