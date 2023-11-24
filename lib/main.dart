import 'package:flutter/material.dart';
import 'package:jang_seohyun/theme.dart';

import 'IntroScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeStyle.light,
      themeMode: ThemeMode.light,
      home: const IntroScreen(),
    );
  }
}