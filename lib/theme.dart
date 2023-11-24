import 'package:flutter/material.dart';

class ThemeStyle {
  static ThemeData get dark => ThemeData.dark().copyWith(
    useMaterial3: true,
    textTheme: const TextTheme(
    ),
  );

  static ThemeData get light => ThemeData.light().copyWith(
    useMaterial3: true,
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold, fontFamily: 'SuseongHyejeong',),
      titleMedium: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'SuseongHyejeong',),
      titleSmall: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'SuseongHyejeong',),

      bodyMedium: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.normal, fontFamily: 'SuseongHyejeong',),
      bodySmall: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal, fontFamily: 'SuseongHyejeong',),
    ),
  );
}