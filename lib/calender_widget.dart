import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({super.key});

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  @override
  Widget build(BuildContext context) => TableCalendar(
        focusedDay: DateTime.now(), // 현재 시간
        firstDay: DateTime(2023, 12, 1),
        lastDay: DateTime(2023, 12, 31),
      );
}
