import 'package:flutter/material.dart';

class ThemeStyle {
  static ThemeData get dark => ThemeData.dark().copyWith(
    textTheme: const TextTheme(
    ),
  );

  static ThemeData get light => ThemeData.light().copyWith(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold, fontFamily: 'PyeongChang',),
      titleMedium: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'PyeongChang',),
      titleSmall: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'PyeongChang',),

      bodyMedium: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.normal, fontFamily: 'SuseongHyejeong',),
      bodySmall: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal, fontFamily: 'SuseongHyejeong',),


    ),
  );
}