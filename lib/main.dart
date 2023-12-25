import 'package:flutter/material.dart';
import 'example/table_calendar/events_example.dart';

void main() {
  runApp(const MyApp());
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
      home: TableEventsExample(),
    );
  }
}