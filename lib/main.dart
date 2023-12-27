import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:jang_seohyun/mainscreen.dart';

void main() {
  initializeDateFormatting().then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeStyle.light,
      // themeMode: ThemeMode.light,
      // darkTheme: ThemeStyle.dark,
      home: MainScreen(),
    );
  }
}